function scr_attack_target_ida() {
	if(object_index = obj_ida) {
		magic_ball = instance_create_depth(x, y, -4, obj_magic_projectile)
		magic_ball.owner = id
		magic_ball.image_angle = point_direction(x, y, target.x, target.y)
		magic_ball.direction = point_direction(x, y, target.x, target.y)
		magic_ball.speed = 4
		magic_ball.target_tile = target.tile
		//magic_ball.accuracy=accuracy
		magic_ball.altitude = target.altitude
	}
}
