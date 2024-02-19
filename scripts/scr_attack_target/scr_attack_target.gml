function scr_attack_target() {
	if(object_index == obj_footman) {
		if(is_defending) {
			exit;
		}
	}
	action_bar = 0
	if(scr_is_attack_hitting(accuracy, target.evasiveness)) { // bör va inuti attack_target()
		attack_target()
	} else {
		missing_time = 0.5 * room_speed
	}
	scr_attack_target_elven_archer()
	scr_attack_target_ida()
	scr_provoke_creep()
}
