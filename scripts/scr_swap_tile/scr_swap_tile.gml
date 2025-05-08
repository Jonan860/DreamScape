
function scr_swap_tile(unit1, unit2) {
	var first_tile = unit1.tile
	var second_tile = unit2.tile
	loopTilesStart
		if(scr_occupiable(self, ALTITUDES.ground) and scr_occupiable(self, ALTITUDES.air) and scr_occupiable(self, ALTITUDES.invisible)) {
			var tile_to_use = self
			break;
		}
	loopTilesEnd

	with(unit1) {
		scr_move_to_tile(tile_to_use)
		x = tile._x; y = tile._y
	}

	with(unit2) {
		scr_move_to_tile(first_tile)
		x = tile._x; y = tile._y
		phase = UNIT_PHASES.idle
		action_bar = 0 
		target = noone
		destination = noone
	}
	with(unit1) {
		scr_move_to_tile(second_tile)
		x = tile._x; y = tile._y
		phase = UNIT_PHASES.idle
		action_bar = 0
		target = noone
		destination = noone
	}
}
