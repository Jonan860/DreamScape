///scr_get_tiles_within_range(range)
/// @param range
function scr_get_tiles_within_range(argument0) {

	var var_tiles_within_range2=ds_list_create()
	var var_tiles_at_range2=ds_list_create()
	var var_range=argument0
	for(i=1; i<=var_range; i+=1)
	{
		ds_list_copy(var_tiles_at_range2,scr_get_tiles_at_range(tile,i))
	for(j=0;j<=ds_list_size(var_tiles_at_range2)-1;j+=1)
	{
		ds_list_add(var_tiles_within_range2,ds_list_find_value(var_tiles_at_range2,j))
	}
	}

	return var_tiles_within_range2


}
