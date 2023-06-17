// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_best_destination_substitute(destination){
	var optimal_distance=100
	var best_candidate=noone
	var i=1
	for(i=1;i<10;i+=1)
	{
	var tiles_at_range=scr_get_tiles_at_range(destination,i)
var j=0
	for(j=0;j<ds_list_size(tiles_at_range);j+=1)
	{
		var tilu=ds_list_find_value(tiles_at_range,j)
	if(scr_occupiable(tilu,altitude))
	{
		if(scr_get_invisibles_distance(tile,tilu)<optimal_distance)
		{
	var best_candidate=tilu
		optimal_distance=scr_get_invisibles_distance(tile,tilu)
		}
	}
	}
	if(best_candidate!=noone)
	{
	return best_candidate
	}
	}
}