function scr_right_pressed_occupiable_tile(var_selected_unit) {
	if(var_selected_unit == global.lille_skutt) {
		global.lille_skutt.is_building = noone
	}
	if(scr_get_invisibles_distance(global.tile_selected, global.clicked_tile) < 100 and var_selected_unit.owner == global.player and global.clicked_tile != var_selected_unit.tile) {
		with(var_selected_unit) {
			phase = UNIT_PHASES.movement
			destination = mouseToTile()
			scr_update_path_to_destination()
		}
	}
}

function command_all_units_down() { // kan bli lite buggigt kanske
	with(obj_unit) {
		if(owner == global.player) {
			phase = UNIT_PHASES.idle
		}
	}
	repeat(5) {
		with(obj_unit) {
			if(owner == global.player and phase == UNIT_PHASES.idle and !eaten) {
				if(id == global.lille_skutt.id) {
					global.lille_skutt.is_building = noone
				} 
				var blocker = array_first(tile.south_tile.occupants[? altitude])
				if(scr_occupiable(tile.south_tile, altitude) or blocker != undefined and object_is_ancestor(blocker.object_index, obj_unit) and blocker.owner == global.player and blocker.phase == UNIT_PHASES.movement) {
					if(blocker != undefined) {
						action_bar = min(action_bar, blocker.action_bar - 1) 
					}
					phase = UNIT_PHASES.movement
					destination = tile.south_tile
					scr_update_path_to_destination()
				}
			}
		}
	}
}