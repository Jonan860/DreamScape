function scr_build_invisibilty_upgrade() {
	with(global.player) {
		sorceress_has_invisibility = 1
	}
	with(obj_sorceress) {
		mana += global.invisibility_upgrade_mana_bonus/2
		max_mana += global.invisibility_upgrade_mana_bonus
		mana_regen_rate_per_sec += global.invisibility_upgrade_mana_regen_bonus
	}
	ds_list_delete(queue_list, 0)
	build_progress = 0	
}