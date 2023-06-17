// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ds_list_remove_value(list,value){
var var_pos=ds_list_find_index(list,value)
if(var_pos>=0)
{
	ds_list_delete(list,var_pos)
}
else
{
//show_debug_message("value not in remove list")
//show_error("value not in remove list. scr_ds_list_remove_value", 0)
}
}