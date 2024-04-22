
function scr_swap_tile(unit1, unit2) {
	var first_tile = unit1.tile
	var second_tile = unit2.tile
	with(obj_tile) {
		if(scr_occupiable(id, "ground") and scr_occupiable(id, "air") and scr_occupiable(id, "invisible")) {
			var tile_to_use = id
			break;
		}
	}

	with(unit1) {
		scr_move_to_tile(tile_to_use)
	}

	with(unit2) {
		scr_move_to_tile(other.first_tile)
		phase = "idle"
		action_bar = 0 
		target = noone
		destination = noone
	}
	with(unit1) {
		scr_move_to_tile(other.second_tile)
		phase = "idle"
		action_bar = 0
		target = noone
		destination = noone
	}
}
