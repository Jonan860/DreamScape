function scr_right_pressed_occupiable_tile(var_selected_unit) {
	if(var_selected_unit == global.lille_skutt) {
		global.lille_skutt.is_building = noone
	}
	if(scr_get_invisibles_distance(global.tile_selected, global.clicked_tile) < 100 and var_selected_unit.owner == global.player and global.clicked_tile != var_selected_unit.tile) {
		with(var_selected_unit) {
			phase = "movement"
			destination = instance_position(mouse_x, mouse_y, obj_tile)
			scr_update_path_to_destination()
		}
	}
}