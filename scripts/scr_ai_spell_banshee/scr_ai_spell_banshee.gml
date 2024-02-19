function scr_ai_spell_banshee() {
	if(mana >= curse.mana_cost and curse.cooldown_current <= 0 and curse.autocast and altitude != "invisible") {
		scr_banshee_auto_cast_ai_sub()	
	}
}