event_inherited();

function updateQueue() {
	if(unfinished and global.lille_skutt.is_building == id) {
		updateSelfConstruction()
	}
	if(!ds_list_empty(queue_list)) {
		updateRecruitQueue()
	}
}

build = function(skill) {
	if(skill.animator == undefined) {
		skill.perform()
		ds_list_delete(queue_list, 0)
		build_progress = 0
	} else {
		var most_north_tile = scr_get_most_north_occupiable_neighbour()
		if(most_north_tile != noone) {
			with(obj_tile) {
				if(scr_tile_empty(id) and habitable) {
					var var_unit = scr_instance_create_at_tile_with_owner(skill.animator, id, global.player)
					scr_apply_upgrades_on_new_unit(var_unit)
					scr_make_room_for_instance_on_tile(most_north_tile, var_unit.altitude)
					with(var_unit) {
						scr_move_to_tile(most_north_tile)
					}
					break;
				}
			}
			if(rally_tile != noone) {
				with(var_unit) {
					phase = "movement"
					destination = other.rally_tile
					scr_update_path_to_destination()
				}
			}
			ds_list_delete(queue_list, 0)
			build_progress = 0
		}
	}
}

function updateRecruitQueue() {
	build_progress += 1 / room_speed  //game_get_speed(gamespeed_fps)
	var skill = buttonToSkill[? queue_list[|0]]
	if(build_progress >= skill.getDuration()) {
		build(skill)
	}
}

function updateSelfConstruction() {
	owner.getDuration()
	build_progress += owner.getDuration() / game_get_speed(gamespeed_fps)   ////could be something weird here
	if(build_progress > 100) {
		unfinished = 0
		build_progress = 0////
	}
}


