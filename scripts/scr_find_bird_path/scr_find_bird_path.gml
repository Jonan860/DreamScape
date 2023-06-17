/// @description scr_find_bird_path(startile,endtile)
/// @param starttile
/// @param endtile
/// returns the bird path beetween two tiles with start and end tile and in order
function scr_find_bird_path(argument0, argument1) {

	var steptile=argument0
	var endtile=argument1

	var birdpath=ds_list_create()

	ds_list_add(birdpath, steptile)
	var var_best_candidate_distance=scr_get_distance(steptile,endtile)
	var var_best_candidate=steptile
	while(steptile!=endtile)
	{
	
	for (i = 0; i < 6; i += 1)
	{
	var stepcandidate=ds_list_find_value(steptile.list_of_neighbours, i)
	if(stepcandidate!=noone)
	{
	if(scr_get_distance(stepcandidate, endtile)<var_best_candidate_distance)
	{
		var_best_candidate_distance=scr_get_distance(stepcandidate, endtile)
		 var_best_candidate=stepcandidate
	}
	}

	}
	steptile=var_best_candidate
	ds_list_add(birdpath, steptile)
	}
	return birdpath




}
