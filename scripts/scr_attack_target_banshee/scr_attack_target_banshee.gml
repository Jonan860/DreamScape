
function scr_attack_target_banshee() {
	magic_ball = instance_create_depth(x, y, -4, obj_magic_projectile)
	with(magic_ball) {
		sprite_index = spr_banshee_magic_projectile
		owner = other.id	
		speed = 4
		target_tile = other.target.tile
		magic_ball.altitude = target.altitude
	}
	magic_ball.direction = point_direction(x, y, target.x, target.y)
	magic_ball.image_angle = point_direction(x,y, target.x, target.y)
}