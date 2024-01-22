build = function() {	
	with(global.player) {
		elven_archers_has_improved_bows = 1
	}
	with(obj_elven_archer) {
		scr_update_range()
	}
	ds_list_delete(queue_list, 0)
	build_progress = 0
}
