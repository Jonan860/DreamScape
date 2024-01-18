function scr_holy_light_unit(perputrator, target) {
	with(target) {
		HP = min(HP + perputrator.spell_q_heal_amount, max_HP)
		holy_lighted = 1
		alarm[2] = global.spell_q_duration * room_speed
	}
}
