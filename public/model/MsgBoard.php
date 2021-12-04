<?php
require_once CRUD_BASE_PATH . 'MsgBoardEx.php'; // メッセージボード・拡張サポートクラス
App::uses('Model', 'Model');
App::uses('CrudBase', 'Model');

/**
 * メッセージボードのCakePHPモデルクラス
 *
 * @since 2021-6-11
 * @version 1.0.0
 *
 */
class MsgBoard extends AppModel {

	public $name='MsgBoard';
	
	// 関連付けるテーブル CBBXS-1040
	public $useTable = 'msg_boards';

	// CBBXE

	/// バリデーションはコントローラクラスで定義
	public $validate = null;
	
	// ホワイトリスト（DB保存時にこのホワイトリストでフィルタリングが施される）
	public $fillable = [
		// CBBXS-2009
		'id',
		'other_id',
		'user_id',
		'user_type',
		'message',
		'attach_fn',
		'sort_no',
		'delete_flg',
		'update_user',
		'ip_addr',
		'created',
		'modified',

		// CBBXE
	];
	
	// CBBXS-2012
	const CREATED_AT = 'created';
	const UPDATED_AT = 'modified';

	// CBBXE
	
	private $cb; // CrudBase制御クラス
	
	
	public function __construct() {
		parent::__construct();
		
		// CrudBaseロジッククラスの生成
		if(empty($this->CrudBase)) $this->CrudBase = new CrudBase();
	}
	
	
	/**
	 * 初期化
	 * @param CrudBaseController $cb
	 */
	public function init($cb){
		$this->cb = $cb;
		
		// ホワイトリストをセット
		$cbParam = $this->cb->getCrudBaseData();
		$fields = $cbParam['fields'];
		$this->fillable = $fields;
	}
	
	/**
	 * 検索条件とページ情報を元にDBからデータを取得する
	 * @param array $crudBaseData
	 * @return []
	 *  - array data データ
	 *  - int non_limit_count LIMIT制限なし・データ件数
	 */
	public function getData($crudBaseData){
		
		$fields = $crudBaseData['fields']; // フィールド
		
		$kjs = $crudBaseData['kjs'];//検索条件情報
		$pages = $crudBaseData['pages'];//ページネーション情報
		
		// ▽ SQLインジェクション対策
		$kjs = $this->sqlSanitizeW($kjs);
		$pages = $this->sqlSanitizeW($pages);
		
		$page_no = $pages['page_no']; // ページ番号
		$row_limit = $pages['row_limit']; // 表示件数
		$sort_field = $pages['sort_field']; // ソートフィールド
		$sort_desc = $pages['sort_desc']; // ソートタイプ 0:昇順 , 1:降順
		$offset = $page_no * $row_limit;
		
		//条件を作成
		$conditions=$this->createKjConditions($kjs);
		
		$sort_type = '';
		if(!empty($sort_desc)) $sort_type = 'DESC';
		
		$sql =
		"
				SELECT SQL_CALC_FOUND_ROWS MsgBoard.*
				FROM msg_boards AS MsgBoard
				WHERE {$conditions}
				ORDER BY {$sort_field} {$sort_type}
				LIMIT {$offset}, {$row_limit}
			";
		
		$data = $this->query($sql);
		
		//データ構造を変換（2次元配列化）
		$data2 = [];
		if(!empty($data)) $data2 = Hash::extract($data, '{n}.MsgBoard');
		
		// LIMIT制限なし・データ件数
		$non_limit_count = 0;
		$res = $this->query('SELECT FOUND_ROWS()');
		if(!empty($res)){
			$res = reset($res[0]);
			$non_limit_count= reset($res);
		}
		
		// ユーザー名を取得してデータにセットする。
		$data2 = $this->getNickName($data2);
		
		return ['data' => $data2, 'non_limit_count' => $non_limit_count];
		
	}

	
	/**
	 *  ユーザー名を取得してデータにセットする。
	 * @param [] $data
	 * @return [] ユーザー名セット後の$data
	 */
	private function getNickName(&$data){
		
		// ユーザー名のデフォルトをセット
		foreach($data as &$ent){
			$ent['nickname'] = 'none';
		}
		unset($ent);
		
		$ids = Hash::extract($data, '{n}.user_id');
		$ids = array_unique($ids);
		
		$ids_str = "'".implode("','",$ids)."'";
		
		$sql = "SELECT id, nickname FROM users WHERE id IN ({$ids_str})";
		$users = $this->query($sql);
		
		if(empty($users)) return $data;
		
		$userHm = Hash::combine($users, '{n}.users.id','{n}.users');

		foreach($data as &$ent){
			$user_id = $ent['user_id'];
			if(!empty($userHm[$user_id])){
				$ent['nickname'] = $userHm[$user_id]['nickname'];
			}
			
		}
		unset($ent);

		return $data;
	}


	/**
	 * 検索条件情報からWHERE情報を作成。
	 * @param array $kjs	検索条件情報
	 * @return string WHERE情報
	 */
	private function createKjConditions($kjs){

		$cnds=null;
		
		$this->CrudBase->sql_sanitize($kjs); // SQLサニタイズ
		
		if(!empty($kjs['kj_main'])){
			$cnds[]="CONCAT( IFNULL(MsgBoard.msg_board_name, '') ,IFNULL(MsgBoard.note, '')) LIKE '%{$kjs['kj_main']}%'";
		}
		
		// CBBXS-1003
		if(!empty($kjs['kj_id']) || $kjs['kj_id'] ==='0' || $kjs['kj_id'] ===0){
			$cnds[]="MsgBoard.id = {$kjs['kj_id']}";
		}
		if(!empty($kjs['kj_other_id']) || $kjs['kj_other_id'] ==='0' || $kjs['kj_other_id'] ===0){
			$cnds[]="MsgBoard.other_id = {$kjs['kj_other_id']}";
		}
		if(!empty($kjs['kj_user_id']) || $kjs['kj_user_id'] ==='0' || $kjs['kj_user_id'] ===0){
			$cnds[]="MsgBoard.user_id = {$kjs['kj_user_id']}";
		}
		if(!empty($kjs['kj_user_type'])){
			$cnds[]="MsgBoard.user_type = '{$kjs['kj_user_type']}'";
		}
		if(!empty($kjs['kj_message'])){
			$cnds[]="MsgBoard.message LIKE '%{$kjs['kj_message']}%'";
		}
		if(!empty($kjs['kj_attach_fn'])){
			$cnds[]="MsgBoard.attach_fn LIKE '%{$kjs['kj_attach_fn']}%'";
		}
		if(!empty($kjs['kj_sort_no']) || $kjs['kj_sort_no'] ==='0' || $kjs['kj_sort_no'] ===0){
			$cnds[]="MsgBoard.sort_no = {$kjs['kj_sort_no']}";
		}
		$kj_delete_flg = $kjs['kj_delete_flg'];
		if(!empty($kjs['kj_delete_flg']) || $kjs['kj_delete_flg'] ==='0' || $kjs['kj_delete_flg'] ===0){
			if($kjs['kj_delete_flg'] != -1){
			   $cnds[]="MsgBoard.delete_flg = {$kjs['kj_delete_flg']}";
			}
		}
		if(!empty($kjs['kj_update_user'])){
			$cnds[]="MsgBoard.update_user LIKE '%{$kjs['kj_update_user']}%'";
		}
		if(!empty($kjs['kj_ip_addr'])){
			$cnds[]="MsgBoard.ip_addr LIKE '%{$kjs['kj_ip_addr']}%'";
		}
		if(!empty($kjs['kj_created'])){
			$kj_created=$kjs['kj_created'].' 00:00:00';
			$cnds[]="MsgBoard.created >= '{$kj_created}'";
		}
		if(!empty($kjs['kj_modified'])){
			$kj_modified=$kjs['kj_modified'].' 00:00:00';
			$cnds[]="MsgBoard.modified >= '{$kj_modified}'";
		}

		// CBBXE
		
		$cnd=null;
		if(!empty($cnds)){
			$cnd=implode(' AND ',$cnds);
		}

		return $cnd;

	}

	/**
	 * エンティティをDB保存
	 *
	 * メッセージボードエンティティをメッセージボードテーブルに保存します。
	 *
	 * @param array $ent メッセージボードエンティティ
	 * @param array $option オプション
	 *  - form_type フォーム種別  new_inp:新規入力 , copy:複製 , edit:編集
	 *  - ni_tr_place 新規入力追加場所フラグ 0:末尾 , 1:先頭
	 * @return array メッセージボードエンティティ（saveメソッドのレスポンス）
	 */
	public function saveEntity($ent,$option=array()){

		// 新規入力であるなら新しい順番をエンティティにセットする。
		if($option['form_type']=='new_inp' ){
			if(empty($option['ni_tr_place'])){
				$ent['sort_no'] = $this->CrudBase->getLastSortNo($this); // 末尾順番を取得する
			}else{
				$ent['sort_no'] = $this->CrudBase->getFirstSortNo($this); // 先頭順番を取得する
			}
		}
		
		//DBに登録('atomic' => false　トランザクションなし。saveでSQLサニタイズされる）
		$ent = $this->save($ent, array('atomic' => false,'validate'=>false));

		//DBからエンティティを取得
		$ent = $this->find('first',
				array(
						'conditions' => "id={$ent['MsgBoard']['id']}"
				));

		$ent=$ent['MsgBoard'];
		if(empty($ent['delete_flg'])) $ent['delete_flg'] = 0;

		return $ent;
	}


	/**
	 * 当画面のユーザータイプによる変更ボタン、削除ボタンの表示、非表示情報をセットする
	 * @param string $user_type 当画面のユーザータイプ
	 * @param [] $data メッセージボード・データ
	 * @param [] $userInfo ユーザー情報
	 * @return [] メッセージボード・データ
	 */
	public function setBtnDisplayByThisUserType($user_type, &$data, &$userInfo){
		
		$self_user_id = $userInfo['id'] ?? -1; // 自分のユーザーID

		foreach($data as &$ent){
			
			if($user_type == 'master'){
				// 自分のメッセージである場合
				if($ent['user_id'] == $self_user_id){
					$ent['edit_btn'] = '';
					$ent['delete_btn'] = '';
					$ent['menu_btn'] = '';
				}
				
				// 他のユーザーのメッセージである場合
				else{
					$ent['edit_btn'] = 'display:none;';
					$ent['delete_btn'] = '';
					$ent['menu_btn'] = '';
				}
			}else if($user_type == 'login_user'){
				// 自分のメッセージである場合
				if($ent['user_id'] == $self_user_id){
					$ent['edit_btn'] = '';
					$ent['delete_btn'] = '';
					$ent['menu_btn'] = '';
				}
				
				// 他のユーザーのメッセージである場合
				else{
					$ent['edit_btn'] = 'display:none;';
					$ent['delete_btn'] = 'display:none;';
					$ent['menu_btn'] = 'display:none;';
				}
			}
			
			//　ゲストユーザーである場合、編集ボタンも変更ボタンを非表示
			else if($user_type == 'guest'){
				$ent['edit_btn'] = 'display:none;';
				$ent['delete_btn'] = 'display:none;';
				$ent['menu_btn'] = 'display:none;';
			}else{
				throw new Exception('システムエラー 210511D');
			}
			
		}
		unset($ent);
		
		return $data;
	}

	/**
	 * その他関係者ユーザーID配列をセミナー受講者テーブルから取得する
	 * @param int $seminar_id セミナーID
	 * @return [] その他関係者ユーザーID配列
	 */
	public function getOtherUserIds(){
		
		return [1,2,3,4];
		/**
		$sql = "
			SELECT entrant_user_id, permission 
			FROM seminar_entrants 
			WHERE seminar_id = {$seminar_id} AND permission = 1
		";
		
		$data = $this->query($sql);
		if(empty($data)) return [];
		$otherUserIds = Hash::extract($data, '{n}.seminar_entrants.entrant_user_id');
		return $otherUserIds;*/
		
	}
	
	/**
	 * メール通知機能の初期化、送信メール情報の取得
	 * @param [] $data メッセージボードデータ
	 * @param string $user_type 当画面でのユーザータイプ master:当セミナーの主催者, login_user:その他のログインユーザー
	 * @param [] $userInfo ユーザー情報
	 * @param [] $otherUserIds その他ユーザーID配列
	 */
	public function initSendMailInfo($ctrl, &$data, $user_type, &$userInfo, &$otherUserIds){

		// 送信メール情報の基本設定
		$sendMailInfo = [
			'config_group_key'=>'msg_board',
		];
		
		$msgBoardEx = new MsgBoardEx($ctrl, $this);
		$sendMailInfo = $msgBoardEx->init($sendMailInfo, $data, $user_type, $userInfo, $otherUserIds);
		return $sendMailInfo;
	}
	
	
	/**
	 * メール送信
	 * @param [] $ent メッセージボードエンティティ
	 * @param [] $sendMailInfo 送信メール情報
	 * @param [] $userInfo ユーザー情報
	 * @return [] $sendMailInfo 送信メール情報
	 */
	public function sendMail($ctrl, &$ent, &$sendMailInfo, &$userInfo){
		$msgBoardEx = new MsgBoardEx($ctrl, $this);
		$sendMailInfo = $msgBoardEx->sendMail($ent, $sendMailInfo, $userInfo);
		return $sendMailInfo;
	}
	

}