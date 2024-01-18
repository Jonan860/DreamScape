function scr_attack_target_golden_dragon() {
	if(object_index == obj_golden_dragon) {
		var light_beam = instance_create_depth(x, y, -4, obj_light_beam)
		light_beam.image_angle = point_direction(x, y, target.x, target.y)
		light_beam.damage = damage
		light_beam.element = element
		light_beam.direction = point_direction(x, y, target.x, target.y)
		light_beam.speed = 0
		light_beam.target_tile = target.tile
		light_beam.accuracy = accuracy
		light_beam.owner = global.player
		light_beam.creator = id
		with(light_beam) {
			var x1 = x; var y1 = y
			var x2 = target_tile.x; var y2 = target_tile.y
			var x_distance = target_tile.x - x; var y_distance = target_tile.y - y
			x += 1.5 * sprite_get_width(spr_hexagon_pink) * x_distance / (sqrt(power(x_distance, 2) + power(y_distance, 2)))
			y += 1.5 * sprite_get_width(spr_hexagon_pink) * y_distance / (sqrt(power(x_distance, 2) + power(y_distance, 2)))
		}
	}
}
