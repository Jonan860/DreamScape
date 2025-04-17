function scr_update_path_to_destination() {
	
	
		with(obj_game)   ///update_path / this part was last before 
	{
		show_debug_message("instance_unit_again"+string(other))
		//19-07-05
		var var_invisibles_path=scr_find_invisibles_path(other.tile, other.destination)
		ds_list_clear(optimal_path)
		i=ds_list_size(var_invisibles_path)-1
		while(ds_list_empty(optimal_path) and i>0)
		{
		if(ds_list_find_value(var_invisibles_path,i)!=noone)
		{
			var candidate_path=scr_find_path(other.tile,ds_list_find_value(var_invisibles_path,i))
			if(ds_list_empty(candidate_path)==false)
			{
		ds_list_copy(optimal_path, candidate_path)
		scr_disblend_list(other.path)  ///2020summer
		ds_list_clear(other.path)
			ds_list_copy(other.path,optimal_path)
			}
	}
	i-=1
		}
	}
	scr_blend_path()
	scr_update_arrow_path()


}
