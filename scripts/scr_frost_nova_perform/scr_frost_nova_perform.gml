function scr_frost_nova_perform() {
	with(obj_lich) {
		if(phase == "frost nova" and time_until_frost_nova_sec <= 0) {
			scr_frost_nova_damage()
			time_until_frost_nova_after_effect_end_sec = total_time_frost_nova_after_effect_end_sec
			exit;
		}
	}
}
