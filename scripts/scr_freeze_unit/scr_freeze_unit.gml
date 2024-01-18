function scr_freeze_unit(perputrator, victim) {
	with(victim) {
		scr_apply_debuff(global.freeze_struct, perputrator.spell_q_lvl)
		action_bar = 0 //kanske inte?
	}
}
