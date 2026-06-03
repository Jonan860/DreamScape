function scr_ai_spell_banshee() {
	if(canPerform() and curse.autocast ) {
		scr_banshee_auto_cast_ai_sub()	
	}
}