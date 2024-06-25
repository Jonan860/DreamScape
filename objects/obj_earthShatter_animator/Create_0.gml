event_inherited()
with(owner.owner) {
	phase = UNIT_PHASES.earthshatterJump
	move_towards_point(other.target.x, other.target.y, 2 * sprite_get_height(spr_hexagon_pink) / room_speed)	
}
jumping = 1
total_time_to_earthshatter_impact = point_distance(x, y, target.x, target.y) / sprite_get_height(spr_hexagon_pink)/2

impacted_tiles_list = []
loopTilesStart
	if(scr_get_distance(id, other.target) <= array_length(other.owner.amount[?"damage"])) {
		array_push(other.impacted_tiles_list, id)
	}
loopTilesEnd
time_until_earthshatter_gone = 8

save = function() {
	return {
		jumping : jumping,
		total_time_to_earthshatter_impact : total_time_to_earthshatter_impact,
		target : target.id,
		owner : owner.owner.id,
		time_until_earthshatter_gone : time_until_earthshatter_gone
	}
}

load = function(s) {
	jumping = s.jumping
	total_time_to_earthshatter_impact = s.total_time_to_earthshatter_impact
	target = s.target
	with(obj_unit) {
		loadFromIdd(s, "owner", "earthshatter")
	}
	time_until_earthshatter_gone = s.time_until_earthshatter_gone
} 
