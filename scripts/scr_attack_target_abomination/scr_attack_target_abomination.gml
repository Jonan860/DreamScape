function scr_attack_target_abomination() {
	scr_attack_hp_reduction(id, target)
	with(instance_create_depth((x + target.x) / 2, (y + target.y) / 2, -10, obj_knife_attack)) {
		image_angle = 90 + point_direction(other.x, other.y, other.target.x, other.target.y)
		image_xscale = (other.sprite_width / 2) / sprite_width
		image_yscale = (other.sprite_height / 2) / sprite_height
		alarm[0] = room_speed/2
	}
}
