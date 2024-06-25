function scr_rotate_selected_units() {
	with(global.tile_selected) {
		array_left_rotate(selected_units)
	}
}
