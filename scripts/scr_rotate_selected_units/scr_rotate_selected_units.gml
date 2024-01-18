function scr_rotate_selected_units() {
	with(global.tile_selected) {
		scr_ds_list_left_rotate(selected_units)
	}
}
