
function scr_ds_list_append(list1, list2) {
	var var_list_to_be_added_to = ds_list_create()
	var var_list_to_add = ds_list_create()

	ds_list_copy(var_list_to_be_added_to, list1)
	ds_list_copy(var_list_to_add, list2)

	for(var i = 0; i < ds_list_size(var_list_to_add); i += 1) {
		var var_value_to_be_added = var_list_to_add[|i]
		ds_list_add(var_list_to_be_added_to,var_value_to_be_added)
	}
	ds_list_copy(list1, var_list_to_be_added_to)
}
