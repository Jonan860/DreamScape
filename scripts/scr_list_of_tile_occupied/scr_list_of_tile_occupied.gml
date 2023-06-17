// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_list_of_tile_occupied(list,altitude){
for(i=0;i<ds_list_size(list);i+=1)
{
	var tilu=ds_list_find_value(list,i)
if(scr_occupiable(tilu,altitude))
{
return 0
}
}
return 1
}