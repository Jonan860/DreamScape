function scr_hp_regeneration() {
	with(obj_unit) {
		if(HP > 0 and !eaten) {
			HP = min(HP + HP_regeneration_rate / room_speed, max_HP)
		}
	}
}
