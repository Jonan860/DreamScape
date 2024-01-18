
function scr_cloak_unit(targeto) {
	with(targeto) {
		var homeland = tile.occupants[|altitude]
		with(tile) {
			scr_ds_list_remove_value(homeland, targeto)
			ds_list_add(invisibles_list, targeto)
		}
		scr_make_all_unit_detarget(targeto)
		altitude = "invisible"
		phase = "idle"
		action_bar = 0
	}
}