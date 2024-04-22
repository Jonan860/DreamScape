event_inherited();

function updateQueue() {
	if(unfinished and global.lille_skutt.is_building == id) {
		updateSelfConstruction()
	}
	if(!ds_list_empty(queue_list)) {
		updateRecruitQueue()
	}
}

function updateRecruitQueue() {
	build_progress += 1 / room_speed  //game_get_speed(gamespeed_fps)
	var varObj = buttonToSkill[? queue_list[|0]]
	var var_time = ds_map_find_value(global.map_objects_to_build_time, buttonToSkill[? queue_list[|0]])
	if(build_progress >= var_time) {
		varObj.build()
	}
}

function updateSelfConstruction() {
	var var_build_time = ds_map_find_value(global.map_objects_to_build_time, object_index)
	build_progress += var_build_time / room_speed //game_get_speed(gamespeed_fps)   ////could be something weird here
	if(build_progress > 100) {
		unfinished = 0
		build_progress = 0////
	}
}


