///scr_ds_list_append(list_to_be_added_to,list_to_add)
/// @param list_to_be_added_to
/// @param list_to_add
function scr_ds_list_append(argument0, argument1) {
	var var_list_to_be_added_to=ds_list_create()
	var var_list_to_add=ds_list_create()

	ds_list_copy(var_list_to_be_added_to,argument0)
	ds_list_copy(var_list_to_add,argument1)

	for(i=0;i<=ds_list_size(var_list_to_add)-1;i+=1)
	{
		var var_value_to_be_added=ds_list_find_value(var_list_to_add,i)
	ds_list_add(var_list_to_be_added_to,var_value_to_be_added)
	}

	ds_list_copy(argument0,var_list_to_be_added_to)


}
