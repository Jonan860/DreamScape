if(time_until_dark_ritual_sacrifice_sec > 0) {
	draw_set_color(c_purple)
	var varXscale3 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_heal_animation)
	var varYscale3 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_heal_animation)
	var varAlpha = -16 * duration_left * (duration_left - owner.duration)
	draw_sprite_ext(spr_heal_animation, 0, target.x, target.y, varXscale3, varYscale3 , 0, -1, varAlpha)
	draw_set_color(c_white)
}