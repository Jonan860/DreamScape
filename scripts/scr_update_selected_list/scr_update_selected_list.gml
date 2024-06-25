function scr_update_selected_list() {
	selected_units = []
	selected_units = array_concat(selected_units, grounds_list)
	selected_units = array_concat(selected_units, airs_list)
	selected_units = array_concat(selected_units, invisibles_list)
}