function scr_attack_target_carrion_beetle() {
	attackEffectWrapper(id, target)
	with(instance_create_depth((x + target.x) / 2, (y + target.y) / 2, -10, obj_horn_attack)) {
		image_angle = point_direction(other.x, other.y, other.target.x, other.target.y)
		image_xscale = (other.sprite_width / 2) / sprite_width 
		image_yscale = image_xscale * (1 - 2 * (image_angle < 270 and image_angle > 90))
		alarm[0] = room_speed / 2
	}
}