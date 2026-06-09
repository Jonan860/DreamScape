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
	var hastes = 0
	var haste_bonus = spellToAmount(SPELLS.haste) / 100
	if(scr_is_buffed(SPELLS.haste)) {
		for(var i = 0; i < array_length(list_of_active_buff_structs); i++) {
			if(list_of_active_buff_structs[i].Enum == SPELLS.haste) {
				hastes += 1
			}
		}
	}
	
	if(action_bar < (attack_cost / power(1 + haste_bonus, hastes))) {
		return false
	}
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
