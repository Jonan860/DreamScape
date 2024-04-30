with(owner.owner) {
	phase = "earthshatter jump"
	move_towards_point(other.target.x, other.target.y, 2 * sprite_get_height(spr_hexagon_pink) / room_speed)	
}
phase = "jump"
total_time_to_earthshatter_impact = point_distance(x, y, target.x, target.y) / sprite_get_height(spr_hexagon_pink)/2

impacted_tiles_list = ds_list_create()
with(obj_tile) {
	if(scr_get_distance(id, other.target) <= array_length(other.owner.amount[?"damage"])) {
		ds_list_add(other.impacted_tiles_list, id)
	}
}
time_until_earthshatter_gone = 8
