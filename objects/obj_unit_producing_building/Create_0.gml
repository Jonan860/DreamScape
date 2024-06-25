event_inherited();

build = function(skill) {
	if(skill.animator == undefined) {
		skill.perform()
		array_delete(queue_list, 0, 1)
		build_progress = 0
	} else {
		var most_north_tile = scr_get_most_north_occupiable_neighbour()
		if(most_north_tile != noone) {
			loopTilesStart
				if(scr_tile_empty(id) and habitable) {
					var var_unit = scr_instance_create_at_tile_with_owner(skill.animator, id, global.player)
					scr_apply_upgrades_on_new_unit(var_unit)
					scr_make_room_for_instance_on_tile(most_north_tile, var_unit.altitude)
					with(var_unit) {
						scr_move_to_tile(most_north_tile)
						x = tile._x; y = tile._y
					}
					break
				}
			loopTilesEnd
		}
		if(rally_tile != noone) {
			with(var_unit) {
				phase = UNIT_PHASES.movement
				destination = other.rally_tile
				scr_update_path_to_destination()
			}
		}
		array_delete(queue_list, 0, 1)
		build_progress = 0
	}
}

function updateRecruitQueue() {
	build_progress += 1 / room_speed  //game_get_speed(gamespeed_fps)
	var skill = buttonToSkill[? queue_list[0]]
	if(build_progress >= skill.getDuration()) {
		build(skill)
	}
}

function updateSelfConstruction() {
	build_progress += global.map_objects_to_build_time[?object_index] / game_get_speed(gamespeed_fps)   ////could be something weird here
	if(build_progress > 100) {
		unfinished = 0
		build_progress = 0////
		global.lille_skutt.is_building = noone
	}
}


