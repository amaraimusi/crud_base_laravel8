<?php

require_once CRUD_BASE_PATH . 'PdoDao.php';

/**
 * プレーン版ストラテジークラス
 * @version 1.0.0
 * @since 2021-12-5
 * @license MIT
 */
class CrudBaseStrategyForPlain  implements ICrudBaseStrategy{
	
	private $ctrl; // クライアントコントローラ
	private $model; // クライアントモデル
	private $whiteList; // ホワイトリスト
	private $crudBaseData;
	private $dao; // PDO DAO
	private $users; // ユーザーエンティティ
	
	public function __construct(){
	    
	    // データベースアクセスオブジェクトであるPDOの生成とDB接続設定
	    global $crudBaseConfig;
	    $dbConfig = $crudBaseConfig['dbConfig'];
	    $this->dao = new PdoDao($dbConfig);
	    
	    // セッションを開始
	    session_start();
	    
	}
	
	/**
	 * クライアントコントローラのセッター
	 * @param mixed $ctrl クライアントコントローラ
	 */
	public function setCtrl($ctrl){
		$this->ctrl = $ctrl;
	}
	
	
	/**
	 * クライアントモデルのセッター
	 * @param mixed $model クライアントモデル
	 */
	public function setModel($model){
		$this->model = $model;
	}
	
	
	/**
	 * ホワイトリストのセッター
	 * @param [] $whiteList ホワイトリスト
	 */
	public function setWhiteList(&$whiteList){
		$this->whiteList = $whiteList;
	}
	
	
	/**
	 * SQLを実行する
	 * @param string $sql SQL文
	 * @return mixed
	 */
	public function sqlExe($sql){
	    $res = $this->dao->query($sql);
		return $res;
	}
	
	public function query($sql){
		return $this->sqlExe($sql);
	}
	
	public function begin(){
		$res = $this->dao->query('BEGIN');
		return $res;
	}
	
	public function rollback(){
	    $res = $this->dao->query('ROLLBACK');
	    return $res;
	}
	
	public function commit(){
	    $res = $this->dao->query('COMMIT');
	    return $res;
	}
	
	
	/**
	 * セッションに書き込み
	 * @param string $key
	 * @param mixed $value 値
	 */
	public function sessionWrite($key, $value){
	    $_SESSION[$key] = $value;
	} 
	
	
	/**
	 *  セッションから読み取り
	 * @param string $key キー
	 * @return mixed 
	 */
	public function sessionRead($key){
	    return $_SESSION[$key];
	}
	
	
	/**
	 * セッションから削除
	 * @param string $key キー
	 */
	public function sessionDelete($key){
	    unset($_SESSION[$key]);
	} 
	
	
// 	/**■■■□□□■■■□□□
// 	 * ユーザー情報を取得する
// 	 * 
// 	 * @return
// 	 *  - update_user 更新ユーザー
// 	 *  - ip_addr IPアドレス
// 	 *  - user_agent ユーザーエージェント
// 	 *  - role 権限
// 	 *  - authority 権限データ
// 	 */
// 	public function getUserInfo(){
		
// 		$userInfo =[
// 				'update_user' => '',
// 				'user_name' => '',
// 				'user_id' => '',
// 				'user_email' => '',
// 				'ip_addr' => $_SERVER["REMOTE_ADDR"], // IPアドレス,
// 				'user_agent' => $_SERVER['HTTP_USER_AGENT'], // ユーザーエージェント,
// 				'role' => 'none',
// 		];
		
// 		if(\Auth::id()){// idは未ログインである場合、nullになる。
// 			$user_id = \Auth::id(); // ユーザーID（番号）
// 			$user_name = \Auth::user()->name; // ユーザー名
// 			$user_email = \Auth::user()->email; // メールアドレス
// 			$role = \Auth::user()->role; // 権限
			
// 			$userInfo['update_user'] = $user_name;
// 			$userInfo['user_name'] = $user_name;
// 			$userInfo['user_id'] = $user_id;
// 			$userInfo['user_email'] = $user_email;
// 			$userInfo['role'] = $role;
			
// 			// 権限が空であるならオペレータ扱いにする
// 			if(empty($userInfo['role'])){
// 				$userInfo['role'] = 'oparator';
// 			}
			
// 		}
		
// 		return $userInfo;
// 	}
	
	/**
	 * ユーザー情報を取得する
	 * @param [] $param
	 *  - review_mode レビューモード true:レビューモードON
	 *
	 * @return
	 *  - update_user 更新ユーザー
	 *  - ip_addr IPアドレス
	 *  - user_agent ユーザーエージェント
	 *  - role 権限
	 *  - authority 権限データ
	 */
	public function getUserInfo($param=[]){
	    
	    // ユーザー情報の構造
	    $userInfo = [
	        'id'=> 0,
	        'user_id'=> 0,
	        'update_user' => '',
	        'username' => '',
	        'user_name' => '',
	        'nickname' => '',
	        'ip_addr' => '',
	        'user_agent' => '',
	        'email'=>'',
	        'role' => 'oparator',
	        'delete_flg' => 0,
	        'authority' => [
	            'name' => '',
	            'wamei' => '',
	            'level' => 0,
	        ],
	    ];
	    
	    if(!empty($param['review_mode'])){
	        return $this->getUserInfoForReviewMode($userInfo); // レビューモード用ユーザー情報を取得
	    }
	    
	    // ユーザーエンティティを取得
	    $users = $this->getUsers();
	    
	    if(\Auth::id()){// idは未ログインである場合、nullになる。
	        $userInfo['id'] = \Auth::id(); // ユーザーID
	        $userInfo['user_id'] = $userInfo['id'];
	        $userInfo['username'] = \Auth::user()->name; // ユーザー名
	        $userInfo['user_name'] = $userInfo['username'];
	        $userInfo['update_user'] = $userInfo['username'];
	        $userInfo['email'] = \Auth::user()->email; // メールアドレス
	        $userInfo['role'] = \Auth::user()->role; // メールアドレス
	    }
	    
	    $userInfo['ip_addr'] = $_SERVER["REMOTE_ADDR"];// IPアドレス
	    $userInfo['user_agent'] = $_SERVER['HTTP_USER_AGENT']; // ユーザーエージェント
	    
	    if(!empty($userInfo['id'])){
	        $users = \DB::select("SELECT * FROM users WHERE id={$userInfo['id']}");
	        $users = $users[0];
	        $userInfo['role'] = $users->role;
	        $userInfo['delete_flg'] = $users->delete_flg;
	        
	    }
	    
	    
	    // 権限が空であるならオペレータ扱いにする
	    if(empty($userInfo['role'])){
	        $userInfo['role'] = 'oparator';
	    }
	    
	    $role = $userInfo['role'];
	    $userInfo['authority'] = $this->getAuthority($role);
	    
	    return $userInfo;
	}
	
	/**
	 * ユーザーエンティティを取得
	 * @return [] ユーザーエンティティ
	 */
	private function getUsers(){
	    if(!empty($this->users)) return $this->users;
	    
	    if(empty($_SESSION['uid'])) return [];
	    
	    $user_id = $_SESSION['uid'];
        $sql = "SELECT * FROM users WHERE id='{$user_id}'";
        $users = $this.selectEntity($sql);

	    $this->users = $users;
	    return $users;
	}
	
	
	/**
	 *  レビューモード用ユーザー情報を取得
	 * @param [] $userInfo
	 * @return [] $userInfo
	 */
	private function getUserInfoForReviewMode(&$userInfo){
	    
	    $userInfo['id'] = -1;
	    $userInfo['user_id'] = $userInfo['id'];
	    $userInfo['update_user'] = 'dummy';
	    $userInfo['username'] = $userInfo['update_user'];
	    $userInfo['update_user'] = $userInfo['update_user'];
	    $userInfo['ip_addr'] = 'dummy_ip';
	    $userInfo['user_agent'] = 'dummy_user_agent';
	    $userInfo['email'] = 'dummy@example.com';
	    $userInfo['role'] = 'admin';
	    $userInfo['delete_flg'] = 0;
	    $userInfo['nickname'] = '見本ユーザー';
	    $userInfo['authority']['name'] = 'admin';
	    $userInfo['authority']['wamei'] = '見本';
	    $userInfo['authority']['level'] = 30;
	    $userInfo['review_mode'] = 1; // 見本モードON;
	    
	    return $userInfo;
	}
	
	
	/**
	 * パス情報を取得する
	 * @return []
	 *  - home_r_path string ホーム相対パス
	 *  - webroot string  ホーム相対パスのエイリアス(別名)
	 */
	public function getPath(){
		$web_root = CRUD_BASE_URL_BASE;
		$home_r_path = $web_root;
		
		return [
				'home_r_path' => $home_r_path,
				'webroot' => $web_root,
		];
	}
	
	
	/**
	 * データをDB保存
	 * @param [] $data データ（エンティティの配列）
	 * @param [] $option ホワイトリスト
	 */
	public function saveAll(&$data, &$option=[]){
		
		foreach($data as &$ent){
			$this->saveEntity($ent, $option);
		}
		unset($ent);
		
	}
	
	
	/**
	 * エンティティをDB保存
	 * @param [] $ent エンティティ
	 * @param [] $option
	 */
	public function save(&$ent, &$option=[]){
		return $this->saveEntity($ent, $option);
	}
	
	
	/**
	 * エンティティのDB保存
	 * @param [] $ent エンティティ
	 * @param [] $whiteList ホワイトリスト
	 * @return [] エンティティ(insertされた場合、新idがセットされている）
	 */
	public function saveEntity(&$ent, &$option=[]){
		

		$ent = array_intersect_key($ent, array_flip($this->whiteList)); // ホワイトリストによるフィルタリング
		
		
		if(empty($ent['id'])){
			// ▽ idが空であればINSERTをする。
			$id = $this->model->insertGetId($ent); // INSERT
			$ent['id'] = $id;
		}else{

			// ▽ idが空でなければUPDATEする。
			$this->model->updateOrCreate(['id'=>$ent['id']], $ent); // UPDATE
		}
		
		return $ent;
	}
	
	/**
	 * idに紐づくレコードをDB削除
	 * @param int $id
	 */
	public function delete($id){
		$rs=$this->model->destroy($id); // idに紐づくレコードをDB削除
		return $rs;
	}
	
	/**
	 * 検索条件のバリデーション
	 *
	 * 引数のデータを、バリデーション情報を元にエラーチェックを行います。
	 * その際、エラーがあれば、エラーメッセージを作成して返します。
	 *
	 * @param array $data バリデーション対象データ
	 * @param array $validate バリデーション情報
	 * @return string 正常な場合、nullを返す。異常値がある場合、エラーメッセージを返す。
	 */
	public function validForKj($data,$validate){
		// ■■■□□□■■■□□□
		return '';
	}
	
	/**
	 * CSRFトークンを取得する ※Ajaxのセキュリティ
	 * @return mixid CSRFトークン
	 */
	public function getCsrfToken(){
		return csrf_token(); // ← Laravelの関数
	}
	
	
	/**
	 * SQLを実行して単一の値を取得する
	 * @param string $sql
	 * @return mixied 単一の値
	 */
	public function selectValue($sql){
		$res = \DB::select($sql);
		
		$value = null;
		if(!empty($res)){
			$ent = current($res);
			$value = current($ent);
		}
		
		return $value;
	}
	
	
	/**
	 * SQLを実行してエンティティを取得する
	 * @param string $sql
	 * @return [] エンティティ
	 */
	public function selectEntity($sql){
		$res = \DB::select($sql);
		
		$ent = [];
		if(!empty($res)){
			$ent = current($res);
			$ent = (array)$ent;
		}
		
		return $ent;
	}
	
	
	/**
	 * SQLを実行してデータを取得する
	 * @param string $sql
	 * @return [] データ（エンティティの配列）
	 */
	public function selectData($sql){
		$data = \DB::select($sql);
		
		$data2 = [];
		if(!empty($data)){
			foreach($data as $ent){
				$data2[] = (array)$ent;
			}
		}
		
		return $data2;
	}
	
	public function setCrudBaseData(&$crudBaseData)
	{
		$this->crudBaseData = $crudBaseData;
	}
	
	public function passwordToHash($pw){
		throw new Error('passwordToHashメソッドは未実装です。');// ■■■□□□■■■□□□
	}
	
	/**
	 * ログインする
	 * {@inheritDoc}
	 * @see ICrudBaseStrategy::login()
	 * $option []
	 *  - submit_key Submitボタンのキー（POSTのname属性）
	 *  - email_key Eメール要素のキー（POSTのname属性）
	 *  - pw_key パスワード要素のキー（POSTのname属性）
	 *  - referer ログイン後の移動先URL
	 * @return 0:ログイン失敗, 1:既にログイン済み, -1:Submitボタンが押されていない
	 */
	public function login($option=[]){
	    
	    $submit_key = $option['submit_key'] ?? 'login_submit';
	    $email_key = $option['email_key'] ?? 'email';
	    $pw_key = $option['pw_key'] ?? 'password';
	    
	    $referer = $option['referer'] ?? '';
	    if(empty($referer)){
	        $referer = $_SESSION['referer'] ?? '/';
	    }
	    
	    // Submitボタンが押されたときに、ログインの認証処理を行う。
	    if(!empty($_POST[$submit_key])){
	        
	        // 既にログイン済みであるか判定、未ログインである場合のみログイン認証を開始する。
	        if(empty($_SESSION['uid'])){
	            $email = $_POST[$email_key];
	            $users = $this->getUsersByEmail($email_key, $email); // usersテーブルからEメールに紐づくユーザーエンティティを取得する
	            $user_id = $users['id'];
	            $pw_hash = $users['password'];
	            
	            // パスワードの一致判定
	            if(password_verify($_POST[$pw_key], $pw_hash)){
	                session_regenerate_id(true); // セッションの更新
	                $_SESSION['uid'] =$user_id; // ログイン状態にする。
	                header('Location: ' . $referer);// 遷移元のページにリダイレクトする。
	                exit();
	            }else{
	                logB("ログイン失敗:{$email}  {$_POST[$pw_key]}");
	                return 0;
	            }
	        }
	        return 1;
	    }
	    
	    return -1;
	}
	
	/**
	 * usersテーブルからEメールに紐づくユーザーエンティティを取得する
	 * @param string $email_key usersテーブルにおける、Eメールのフィールド名
	 * @param string $email Eメールアドレス
	 * @return [] ユーザーエンティティ
	 */
	private function getUsersByEmail( $email_key, $email){
	    
	    // 本来は、DBからユーザーEメールにひもづくパスワードハッシュを取得処理である。
	    $ent = $this->selectEntity("SELECT * FROM users WHERE {$email_key} = '{$email}'");

	    return $ent;

	}
	
	
	/**
	 * ログアウトする
	 * {@inheritDoc}
	 * @see ICrudBaseStrategy::logout()
	 * $option []
	 *  - referer ログイン後の移動先URL
	 */
	public function logout($option = []){

	    $_SESSION['uid'] = null; // ログアウト状態にする
	    
	    $referer = $option['referer'] ?? '';
	    if(empty($referer)){
	        $referer = $_SESSION['referer'] ?? '/';
	    }

	    header('Location: ' . $referer);// 遷移元のページにリダイレクトする。
	}
	
	/*
	 *  ログインチェック
	 *  @return true:ログイン状態, false:未ログイン
	 */
	public function loginCheck(){
	    if(empty($_SESSION['uid'])){
	        return false;
	    }
	    return true;
	}
	
	
	
}