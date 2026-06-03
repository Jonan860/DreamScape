var varXscale3 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_heal_animation)
var varYscale3 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_heal_animation)
var varAlpha = -16 * duration_left * (duration_left - owner.duration)
if(instance_exists(target)) {
	draw_sprite_ext(spr_heal_animation, 0, target.x, target.y, varXscale3, varYscale3 , 0, c_purple, varAlpha)
}