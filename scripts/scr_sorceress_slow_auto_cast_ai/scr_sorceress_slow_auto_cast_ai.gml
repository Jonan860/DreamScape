function scr_sorceress_slow_auto_cast_ai(){
	if(object_index == obj_sorceress) {
		if(mana >= global.slow_struct.mana_cost and spell_q_cooldown_current <= 0 and slow_autocast_is_on and altitude != "invisible") {
			scr_sorceress_slow_auto_cast_ai_sub()
		
		}
	}
}