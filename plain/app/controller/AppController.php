<?php

/**
 * CakePHP標準基本コントローラ
 *
 */
class AppController {
    
    protected $cb; // CrudBase制御クラス
	
	// 更新ユーザーなど共通フィールドをデータにセットする。
	protected function setCommonToData($data){
	
		// 更新ユーザー
	    $update_user = '';
	    // ■■■□□□■■■□□□あとで作成
// 	    if(!empty(\Auth::user())){
// 	        $update_user = \Auth::user()->name; // ユーザー名
// 	    }
		
		// ユーザーエージェント
		$user_agent = $_SERVER['HTTP_USER_AGENT'];
		$user_agent = mb_substr($user_agent,0,255);
	
		// IPアドレス
		$ip_addr = $_SERVER["REMOTE_ADDR"];
	
		// 本日
		$today = date('Y-m-d H:i:s');
	
		// データにセットする
		foreach($data as $i => $ent){
				
			$ent['update_user'] = $update_user;
			$ent['user_agent'] = $user_agent;
			$ent['ip_addr'] = $ip_addr;
				
			// idが空（新規入力）なら生成日をセットし、空でないなら除去
			if(empty($ent['id'])){
				$ent['created'] = $today;
			}else{
				unset($ent['created']);
			}
				
			$ent['modified'] = $today;
	
				
			$data[$i] = $ent;
		}
	
	
		return $data;
	
	}
	
	
	
	// 更新ユーザーなど共通フィールドをセットする。
	protected function setCommonToEntity($ent){
		
	    // ■■■□□□■■■□□□あとで作成
// 		// 更新ユーザーの取得とセット
// 		$update_user = \Auth::user()->name; // ユーザー名
// 		$ent['update_user'] = $update_user;
		$ent['update_user'] = 'dummy'; // ■■■□□□■■■□□□仮
		
		// ユーザーエージェントの取得とセット
		$user_agent = $_SERVER['HTTP_USER_AGENT'];
		$user_agent = mb_substr($user_agent,0,255);
		$ent['user_agent'] = $user_agent;
		
		// IPアドレスの取得とセット
		$ip_addr = $_SERVER["REMOTE_ADDR"];
		$ent['ip_addr'] = $ip_addr;
		
		// idが空（新規入力）なら生成日をセットし、空でないなら除去
		if(empty($ent['id'])){
			$ent['created'] = date('Y-m-d H:i:s');
		}else{
			unset($ent['created']);
		}
		
		// 更新日時は除去（DB側にまかせる）
		if(isset($ent['modified'])){
			unset($ent['modified']);
		}
		
		return $ent;
		
	}
	
	/**
	 * 削除用のエンティティを取得する
	 * @param int $id ID
	 */
	protected function getEntForDelete($id){
		if(empty($id)){
			throw new Exception('IDが空です。');
		}
		
		$ent2 = array(
				'id'=>$id,
				'delete_flg'=>1,
		);
		
		// 更新ユーザーなど共通フィールドをセットする。
		$ent2 = $this->setCommonToEntity($ent2);
		
		return $ent2;
	}

	
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
		
	    return $this->cb->getUserInfo($param);
	    
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
	 * 権限に紐づく権限エンティティを取得する
	 * @param string $role 権限
	 * @return array 権限エンティティ
	 */
	private function getAuthority($role){
		
		// 権限データを取得する
		global $crudBaseAuthorityData; // 権限データ
		
		// 権限データを取得する
		$authorityData = $crudBaseAuthorityData;
		
		$authority = [];
		if(!empty($authorityData[$role])){
			$authority = $authorityData[$role];
		}
		
		return $authority;
	}
	
	/**
	 * エンティティをDB保存(シンプル版)
	 * @param [] $ent エンティティ
	 * @param string $tbl_name
	 */
	public function saveSimple(&$ent, $tbl_name){
	    return $this->cb->saveSimple($ent, $tbl_name);
	    
	}
	


}