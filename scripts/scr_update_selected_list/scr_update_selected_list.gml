function scr_update_selected_list() {
	ds_list_clear(selected_units)
	scr_ds_list_append(selected_units, grounds_list)
	scr_ds_list_append(selected_units, airs_list)
	scr_ds_list_append(selected_units, invisibles_list)
}