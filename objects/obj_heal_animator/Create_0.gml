duration_left = owner.duration
if(duration_left > 0) {
	var varXscale = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_heal_animation)
	var varYscale = sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_heal_animation)
	draw_sprite_ext(spr_heal_animation, 0, x, y, varXscale, varYscale, 0, -1, -16 * heal_animation_time_left_in_sec * (heal_animation_time_left_in_sec - 0.5))
}