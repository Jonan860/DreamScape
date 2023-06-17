/// @description scr_find_invisibles_path(startile,endtile)
/// @param starttile
/// @param endtile
/// returns the invisibles path beetween two tiles with start and end tile and in order
function scr_find_invisibles_path(argument0, argument1) {

	var steptile=argument0
	var endtile=argument1

	var invisibles_path=ds_list_create()
	ds_list_add(invisibles_path, steptile)
	var var_best_candidate_distance=scr_get_invisibles_distance(steptile,endtile)
	var var_best_candidate=steptile
	while(steptile!=endtile)
	{	
	for (i = 0; i < 6; i += 1)
	{
	var stepcandidate=ds_list_find_value(steptile.list_of_neighbours, i)
	if(stepcandidate!=noone and stepcandidate.habitable)
	{
		var distance_candidate=scr_get_invisibles_distance(stepcandidate, endtile)
	if(distance_candidate<var_best_candidate_distance)
	{
		var_best_candidate_distance=scr_get_invisibles_distance(stepcandidate, endtile)
		 var_best_candidate=stepcandidate
	}
	}
	}
	steptile=var_best_candidate
	ds_list_add(invisibles_path, steptile)
	}
	return invisibles_path




}
