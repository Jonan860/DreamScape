/// @description scr_debug_ds_list(list)
/// @param list
function scr_debugg_ds_list(argument0) {

	list=argument0

	if(ds_list_empty(list))
	{
	show_debug_message("list empty")
	exit;
	}
	var value
	for(i=0 ;i<=ds_list_size(list)-1; i+=1)
	{
	value=ds_list_find_value(list,i)
	show_debug_message("position "+string(i)+" value" + string(value))
	}



}
