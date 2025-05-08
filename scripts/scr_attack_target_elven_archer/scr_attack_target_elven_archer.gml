function scr_attack_target_elven_archer(){
	magic_ball = instance_create_depth(x, y, -4, obj_arrow_animator)
	magic_ball.owner = id
	magic_ball.target_tile = target.tile
	magic_ball.altitude = target.altitude
	magic_ball.image_angle = point_direction(x, y, target.x, target.y)
	magic_ball.direction = point_direction(x, y, target.x, target.y)
	magic_ball.speed = 4
}

function scr_attack_target_dark_ranger() {
	var obj_ind = dark_arrow.autocast ? obj_black_arrow_animator : obj_arrow_animator
	magic_ball = instance_create_depth(x, y, -4, obj_ind)
	magic_ball.owner = id
	magic_ball.target_tile = target.tile
	magic_ball.altitude = target.altitude
	magic_ball.image_angle = point_direction(x, y, target.x, target.y)
	magic_ball.direction = point_direction(x, y, target.x, target.y)
	magic_ball.speed = 4
}