function scr_hp_regeneration() {
	with(obj_unit) {
		if(HP > 0 and !eaten) {
			HP = min(HP + (HP_regeneration_rate + get_max_aura(id, obj_unholy_aura_animator)) / room_speed * global.gamespeed, max_HP)
		}
	}
}
