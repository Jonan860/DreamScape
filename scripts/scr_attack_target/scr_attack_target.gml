function scr_attack_target() {
	if(!canAttack()) {
		exit;
	}
	action_bar = 0
	// bör va inuti attack_target()
	attack_target()
	scr_provoke_creep()
}

function canAttack() {
	if(object_index == obj_footman) {
		if(is_defending) {
			return false;
		}
	}
	if(object_index == obj_sakura) {
		if(instance_exists(obj_iryo_ninjutsu_animator)) {
			return false
		}
	}
	return true
}
