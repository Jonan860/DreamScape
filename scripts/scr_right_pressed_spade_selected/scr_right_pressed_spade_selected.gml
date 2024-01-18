function scr_right_pressed_spade_selected(var_selected_unit, clicked_tile) {
	if(cursor_sprite=spr_spade_cursor and object_is_ancestor(var_selected_unit.to_build_with_spade, obj_unit_producing_building)) {
		var var_barrack_cost = ds_map_find_value(global.map_object_to_costs, var_selected_unit.to_build_with_spade)
		if(global.player.money >= var_barrack_cost and scr_occupiable(clicked_tile, "ground") and scr_get_distance(global.tile_selected, clicked_tile) <= var_selected_unit.range) {
			global.player.money -= var_barrack_cost
			var barrack = scr_instance_create_at_tile_with_owner(var_selected_unit.to_build_with_spade, clicked_tile, global.player)
			barrack.unfinished = 1
			barrack.build_progress = 0
			global.lille_skutt.is_building = self
		}
	}
}