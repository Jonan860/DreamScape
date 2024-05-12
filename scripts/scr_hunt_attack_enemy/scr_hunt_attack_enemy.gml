function scr_hunt_attack_enemy() {
	//scr_check_target_existence_perform_action()  ///förstår ej vad den gör
	if(target.object_index == obj_crystal) {
		var var_crystal_target = target
		var var_random = irandom(30)
		var var_n = 0
		while(target == var_crystal_target) {
			var enemy_exists = 0
			with(obj_unit) {
				if(id == other.id) {
					var var_c = random(3)
					var_c = 0
				}
				if(scr_is_enemies(id, other) and phase != UNIT_PHASES.dead) {
					enemy_exists = 1
					if(var_n = var_random) {
						other.target = id
						break;
					}
					var_n += 1
				}
			}
			if(!enemy_exists) {
				exit;
			}
		}
		scr_attack_target()
		scr_attack_target()
		target = var_crystal_target
	} else {
		scr_attack_target()
	}
}
