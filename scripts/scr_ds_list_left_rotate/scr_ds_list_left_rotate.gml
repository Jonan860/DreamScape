function scr_ds_list_left_rotate(list) {
	var size = ds_list_size(list)
	var list2 = ds_list_create()
	for(var i = 1; i <= size; i += 1) {
		ds_list_add(list2, list[|i mod size])
	}
	ds_list_copy(list, list2)
	ds_list_destroy(list2)
}