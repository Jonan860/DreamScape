if(instance_exists(owner.owner)) {
	with(owner) {
		target = other.target
		scr_frost_nova_damage()
	}
} else {
	show_debug_message("else")
}