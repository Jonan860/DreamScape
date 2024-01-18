function scr_heal_target() {
	with(target) {
		HP = min(max_HP, HP + global.heal_struct.heal_amount)
		heal_animation_time_left_in_sec = global.heal_struct.animation_time
	}
}