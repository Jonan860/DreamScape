image_xscale = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_heal_animation)
image_yscale = sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_heal_animation)
duration_left = owner.duration
save = function() {
	var s = {
		durationLeft : durationLeft,
		x : other.x,
		y : other.y
	}
}

load = function(s) {
	durationLeft = s.durationLeft
	x = s.x
	y = s.y
}