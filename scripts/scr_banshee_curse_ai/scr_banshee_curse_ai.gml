function scr_banshee_curse_ai(){
	if(object_index == obj_banshee) {
		if(mana >= global.curse_struct.mana_cost and spell_q_cooldown_current <= 0 and curse_autocast_is_on and altitude != "invisible") {
			scr_banshee_auto_cast_ai_sub()	
		}
	}
}
