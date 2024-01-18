function scr_select_tile(tile2) {
	if(tile2 > 0) {
		if(!scr_tile_empty(tile2)) {
			scr_unselect_tile(global.tile_selected)
			with(tile2) {
				scr_update_selected_list() //tile2.selected_unit=ds_list_find_value(tile2.grounds_list,0)
			}
			global.tile_selected = tile2
		}

		if(scr_tile_empty(tile2)) {
			global.tile_selected = noone
			window_set_cursor(cr_default)
			cursor_sprite = -1
		}
	}
}
