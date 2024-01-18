function scr_money_tree_withdrawal() {
	with(obj_money_tree) {
		time_since_last_withdrawal += 1/room_speed
		if(time_since_last_withdrawal >= time_between_withdrawals) {
			time_since_last_withdrawal = 0
			global.player.money += total_money * money_interest_per_withdrawal
		}
	}
}
