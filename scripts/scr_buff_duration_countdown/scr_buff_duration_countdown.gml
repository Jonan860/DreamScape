// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_buff_duration_countdown(){
with(obj_unit)
{
var list_size=ds_list_size(list_of_active_debuff_structs)
for(var i=0; i<list_size;i+=1)
{
	var structu=ds_list_find_value(list_of_active_debuff_structs,i)
	structu.duration-=1/room_speed
}
for(var i=0; i<list_size;i+=1)
{
	var structu=ds_list_find_value(list_of_active_debuff_structs,i)
	if(structu.duration<=0)
	{
	scr_ds_list_remove_value(list_of_active_debuff_structs,structu)
	i-=1
	list_size-=1
	}
}
}
}