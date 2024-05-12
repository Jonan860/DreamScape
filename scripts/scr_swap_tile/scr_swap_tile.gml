
function scr_swap_tile(unit1, unit2) {
	var first_tile = unit1.tile
	var second_tile = unit2.tile
	with(obj_tile) {
		if(scr_occupiable(id, ALTITUDES.ground) and scr_occupiable(id, ALTITUDES.air) and scr_occupiable(id, ALTITUDES.invisible)) {
			var tile_to_use = id
			break;
		}
	}

	with(unit1) {
		scr_move_to_tile(tile_to_use)
	}

	with(unit2) {
		scr_move_to_tile(first_tile)
		phase = UNIT_PHASES.idle
		action_bar = 0 
		target = noone
		destination = noone
	}
	with(unit1) {
		scr_move_to_tile(second_tile)
		phase = UNIT_PHASES.idle
		action_bar = 0
		target = noone
		destination = noone
	}
}
