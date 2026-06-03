function scr_attack_target_crypt_fiend() {
	with(instance_create_depth(x, y, -4, obj_crypt_fiend_projectile)) {
		owner = other.id
		target = other.target
		speed = 4
	}
}
