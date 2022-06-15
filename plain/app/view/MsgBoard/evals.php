
<?php
$msg_board_id = $ent['id'];
$evalData = $evals[$msg_board_id];
foreach($evalData as $evalEnt){
    $icon_fn = CRUD_BASE_STORAGE_URL . $evalEnt['icon_fn'];
    $eval_type_id = $evalEnt['eval_type_id'];
    $eval_count = $evalEnt['eval_count'];
	?>
	<div style="display:inline-block;margin-right:1.2em;">
		<button type="button" class="eval_btn_base" style="mask-image: url(<?php echo $icon_fn; ?>);-webkit-mask-image: url(<?php echo $icon_fn; ?>"></button>
		<button type="button" class="eval_user_count_btn" onclick="openEvalUsers(this);" data-msg-board-id = "<?php echo $msg_board_id; ?>" data-eval-type-id = "<?php echo $eval_type_id; ?>"> 
			<?php echo $eval_count?></button>
	</div>
<?php } ?>