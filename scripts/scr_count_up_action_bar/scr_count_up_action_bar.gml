function scr_count_up_action_bar() {
	if(scr_is_action_bar_stopped()=0 and phase!="idle")
		{
			var slowed=scr_is_debuffed(global.slow_struct)
		action_bar=min(action_bar+60*(1-slowed*global.slow_struct.speed_reduction)/room_speed,max_action_bar)
		}
}
