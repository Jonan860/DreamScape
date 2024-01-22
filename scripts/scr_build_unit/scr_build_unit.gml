function scr_build_unit() {
		var most_north_tile = scr_get_most_north_occupiable_neighbour()
		if(most_north_tile != noone) {
		
			with(obj_tile) {
				if(scr_tile_empty(id) and habitable) {
					var var_unit = scr_instance_create_at_tile_with_owner(object_index, id, global.player)
					scr_apply_upgrades_on_new_unit(var_unit)
					scr_make_room_for_instance_on_tile(most_north_tile, var_unit.altitude)
					with(var_unit) {
						scr_move_to_tile(most_north_tile)
					}
					break;
				}
			}
			if(rally_tile != noone) {
				var_unit.phase = "movement"
				var_unit.destination = rally_tile
				with(var_unit) {
					scr_update_path_to_destination()
				}
			}
			ds_list_delete(queue_list, 0)
			build_progress = 0
		}
}
