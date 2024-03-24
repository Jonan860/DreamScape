if(holy_lighted) {
	draw_sprite(spr_holy_light, -1, x, y)
}

function holyLightAnimationEnd(perputrator, target) {
	with(target) {
		HP = min(HP + perputrator.holy_light.heal_amount, max_HP)
		holy_lighted = 1
		alarm[2] = global.spell_q_duration * room_speed
	}
}