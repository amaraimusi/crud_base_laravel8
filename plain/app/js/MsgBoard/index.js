
var msgBoard; // MsgBoard.js

jQuery(()=>{
	
	msgBoard = new MsgBoard;
	msgBoard.init();
	
});


// メッセージ追加アクション
function addMsg(){
	msgBoard.addMsg();
}

// メッセージ追加アクション
function showMenu(selfElm){
	msgBoard.showMenu(selfElm);
}

// 編集区分を表示する
function showEditDiv(selfElm){
	msgBoard.showEditDiv(selfElm);
}

// 編集区分の「戻る」ボタンアクション
function returnEdit(selfElm){
	msgBoard.returnEdit(selfElm);
}

// 削除アクション
function deleteAction(selfElm){
	msgBoard.deleteAction(selfElm);
}

// 編集登録アクション
function regEdit(selfElm){
	msgBoard.regEdit(selfElm);
}

// 評価ユーザーを表示する
function openEvalUsers(btn){
	let jqbtn = jQuery(btn);
	let msg_board_id = jqbtn.attr('data-msg-board-id');
	let eval_type_id = jqbtn.attr('data-eval-type-id');
	msgBoard.openEvalUsers(msg_board_id, eval_type_id);

}
