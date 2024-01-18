function scr_attack_target() {
	if(object_index == obj_footman) {
		if(footman_is_defending) {
			exit;
		}
	}
	action_bar = 0
	if(scr_is_attack_hitting(accuracy, target.evasiveness)) {
		scr_attack_target_hungry_hungry_lizard()
		scr_attack_target_ghoul()
		scr_attack_target_dreadlord()
		scr_attack_target_footman()
		scr_attack_target_skeleton()
		if(object_index == obj_nils) {
			if(instance_find(obj_ninjago,0) = noone) {
				scr_attack_target_nils()
			}
		}
		scr_attack_target_necromancer()
		scr_attack_target_sorceress()
		scr_attack_target_banshee()
		scr_attack_target_golden_dragon()
		scr_attack_target_abomination()
		scr_attack_target_lich()
		scr_attack_target_crypt_fiend()
		scr_attack_target_carrion_beetle()
		scr_attack_target_priest()
	} else {
		missing_time = 0.5 * room_speed
	}
	scr_attack_target_elven_archer()
	scr_attack_target_ida()
	scr_provoke_creep()
}
