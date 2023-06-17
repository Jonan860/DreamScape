// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_is_debuffed(global_struct){
	var list_size=ds_list_size(list_of_active_debuff_structs)
	for(var i=0;i<list_size;i+=1)
	{
	var structu=ds_list_find_value(list_of_active_debuff_structs,i)
	if(structu.global_struct=global_struct)
	{
		return 1
		}
	}
	return 0
}