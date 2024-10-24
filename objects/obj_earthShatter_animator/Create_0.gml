show_debug_message("earthshat animation create event")

if(variable_instance_exists(id, "owner")) {
	with(owner.owner) {
		phase = UNIT_PHASES.earthshatterJump
		move_towards_point(other.target._x, other.target._y, 2 * sprite_get_height(spr_hexagon_pink) / room_speed)	
	}
	total_time_to_earthshatter_impact = point_distance(x, y, target._x, target._y) / sprite_get_height(spr_hexagon_pink)/2
	impacted_tiles_list = []
	loopTilesStart
		if(scr_get_distance(self, other.target) < array_length(other.owner.amount[?"damage"])) {
			array_push(other.impacted_tiles_list, self)
		}
	loopTilesEnd
}

jumping = 1

total_time_until_earthshatter_gone = 8
time_until_earthshatter_gone = total_time_until_earthshatter_gone

save = function() {
	return {
		jumping : jumping,
		total_time_to_earthshatter_impact : total_time_to_earthshatter_impact,
		targetX : target.tile_x,
		targetY : target.tile_y,
		owner : owner.owner.id,
		time_until_earthshatter_gone : time_until_earthshatter_gone,
		impacted_tiles_list : saveTileList(impacted_tiles_list)
	}
}

load = function(s) {
	jumping = s.jumping
	total_time_to_earthshatter_impact = s.total_time_to_earthshatter_impact
	target = getTile(s.targetX, s.targetY)
	impacted_tiles_list = [] // is necessary
	loadTileList(impacted_tiles_list, s.impacted_tiles_list)
	with(obj_unit) {
		loadFromIdd(s, "owner", "earthshatter")
	}
	time_until_earthshatter_gone = s.time_until_earthshatter_gone
} 
