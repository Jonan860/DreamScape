//feather ignore all


if(instance_exists(owner.owner)) {
	var varOwner = owner
	with(varOwner) {
		target = other.target
		scr_frost_nova_damage()
	}
} else {
	show_debug_message("else")
}