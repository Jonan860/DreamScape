
function attack_target_magic_projectile(_blend = c_white) {
	with(instance_create_depth(x, y, -4, obj_magic_projectile_animator)) {
		image_blend = _blend
		target_tile = other.target.tile
		image_angle = point_direction(x, y, other.target.x, other.target.y)
		owner = other.id
		direction = point_direction(x, y, other.target.x, other.target.y)
		speed = 4
		altitude = other.target.altitude
	}
}
