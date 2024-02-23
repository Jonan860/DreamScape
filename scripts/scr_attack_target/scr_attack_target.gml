function scr_attack_target() {
	if(object_index == obj_footman) {
		if(is_defending) {
			exit;
		}
	}
	action_bar = 0
	 // bör va inuti attack_target()
	attack_target()
	scr_attack_target_elven_archer()
	scr_provoke_creep()
}
