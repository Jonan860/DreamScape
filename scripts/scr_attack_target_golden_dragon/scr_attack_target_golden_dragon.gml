function scr_attack_target_golden_dragon() {
	var light_beam = instance_create_depth(x, y, -4, obj_light_beam, {owner : id, target : target.tile})
	light_beam.image_angle = point_direction(x, y, target.x, target.y)
	with(light_beam) {
		var x_distance = target.x - x; var y_distance = target.y - y
		x += 1.5 * sprite_get_width(spr_hexagon_pink) * x_distance / (sqrt(power(x_distance, 2) + power(y_distance, 2)))
		y += 1.5 * sprite_get_width(spr_hexagon_pink) * y_distance / (sqrt(power(x_distance, 2) + power(y_distance, 2)))
	}
}
