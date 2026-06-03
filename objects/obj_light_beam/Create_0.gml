image_xscale = sprite_get_width(spr_hexagon_pink) / sprite_get_width(spr_light_beam) * 2.5
image_yscale = sprite_get_height(spr_hexagon_pink) / 2.5 / sprite_get_height(spr_light_beam)
alarm[0] = 2 * room_speed

save = function() {
	var s = {}
	s.owner = owner
	s.alarm = alarm[0]
	return s
}

load = function(s) {
	owner = s.owner
	alarm = s.alarm[0]
}