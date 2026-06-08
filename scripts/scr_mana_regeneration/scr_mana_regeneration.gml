function scr_mana_regeneration() {
	with(obj_unit) {
		if(mana != noone and !eaten) {
			mana = max(min(mana + mana_regen_rate_per_sec / room_speed * global.gamespeed, max_mana), 0)
		}
	}
}
