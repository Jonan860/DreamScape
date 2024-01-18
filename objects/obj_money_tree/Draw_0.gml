
draw_self()
if(time_since_last_withdrawal <= 1) {
	draw_text(x, y, string(total_money * money_interest_per_withdrawal))
}