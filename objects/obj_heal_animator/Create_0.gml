event_inherited()
image_xscale = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_heal_animation)
image_yscale = sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_heal_animation)
if(variable_instance_exists(id, "owner")) {
	duration_left = owner.duration
}
save = function() {
	var s = {
		target : target.id,
		owner : owner.owner.id,
		duration_left : duration_left,
		x : x,
		y : y
	}
	return s
}

load = function(s) {
	duration_left = s.duration_left
	x = s.x; y = s.y
	with(obj_unit) {
		loadFromIdd(s, "owner", "heal")
		loadFromIdd(s, "target")
	}
}