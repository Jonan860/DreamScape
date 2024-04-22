function scr_light_beam_damage() {
	with(obj_light_beam) {
		with(obj_unit) {
			if(place_meeting(x, y, other)) {
				if(scr_is_enemies(id, other)) {
					var HP1 = HP
					attackEffectWrapper(other, id) ////decrease total hp by total amount of damage over
					HP = HP1 - (HP1 - HP) / (2 * room_speed)
				}
			}
		}
	}
}
