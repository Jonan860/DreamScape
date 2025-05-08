function scr_update_selected_list() {
	selected_units = []
	selected_units = array_concat(selected_units, occupants[? ALTITUDES.ground])
	selected_units = array_concat(selected_units, occupants[? ALTITUDES.air])
	selected_units = array_concat(selected_units, occupants[? ALTITUDES.invisible])
}