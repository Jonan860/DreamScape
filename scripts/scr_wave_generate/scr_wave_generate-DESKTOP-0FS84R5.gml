function scr_wave_generate() {
	if(enemies_wave_timer=0 and wave_number<=ds_list_size(wave_list))
	{
		var var_wave=ds_list_find_value(wave_list,wave_number-1)
		var var_wave_x=ds_list_find_value(wave_x_list_of_lists,wave_number-1)
	for(i=0;i<ds_list_size(var_wave);i+=1)////stega genom wave lista och creata object enligt den
	{
		var var_object=ds_list_find_value(var_wave,i)
		var var_x=ds_list_find_value(var_wave_x,i)
		with(obj_tile)
		{
			if(tile_y=0 or tile_y=-1)
			{
			if(tile_x=var_x)
			{
		scr_instance_create_at_tile_with_owner(var_object,self,global.enemy)
		break;
			}
			}
		}
	}
	}


}
