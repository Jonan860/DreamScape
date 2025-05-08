
if(global.game.phase == GAME_PHASES.battle) {
	draw_set_color(c_olive)
	var var_camera_height = camera_get_view_height(view_camera[0])
	var var_camera_width = camera_get_view_width(view_camera[0])
	draw_rectangle(0, var_camera_height - hud_height, var_camera_width, var_camera_height, 0)
	if(global.tile_selected != noone) {
		with(array_first(global.tile_selected.selected_units)) {
			if(object_is_ancestor(object_index, obj_unit)) {
				scr_hud_draw_gui_unit()
			} else if (object_is_ancestor(object_index, obj_unit_producing_building)) {
				scr_hud_draw_gui_unit_prod_building()
			}
		}	
	
	}
}
