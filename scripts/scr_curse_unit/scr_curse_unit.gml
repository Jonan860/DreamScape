function scr_curse_unit(curse_target) {
	with(curse_target) {
		scr_apply_debuff(global.curse_struct, 0)
		scr_update_accuracy()
	}
}