function scr_tile_empty(tile2) {
	return (array_equals(tile2.occupants[? ALTITUDES.ground], []) and array_equals(tile2.occupants[? ALTITUDES.air], []) and array_equals(tile2.occupants[? ALTITUDES.invisible], []))
}
