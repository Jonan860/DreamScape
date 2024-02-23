if(draw_earthshatter) {
	draw_sprite_ext(spr_earthquake_crack, -1, x, y, 4 * sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_earthquake_crack), 4 * sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_earthquake_crack), 0, c_white, 1)
}
with(owner) {
	phase = "earthshatter jump"
	move_towards_point(other.target.x, other.y, 2 * sprite_get_height(spr_hexagon_pink) / room_speed)	
}

total_time_to_earthshatter_impact = point_distance(x, y, target.x, target.y) / sprite_get_height(spr_hexagon_pink)/2
time_until_impact = total_time_to_earthshatter_impact

		
