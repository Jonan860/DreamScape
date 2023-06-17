/// @description scr_blend_and_arrow_path()
function scr_blend_path() {
	//ds_list_clear(list_path_arrow_directions)
	for(i=0;i<ds_list_size(path)-1; i+=1)
	{
	
	var tile2=ds_list_find_value(path,i)
	//if(i!=0)
		//{
		//var var_tile_next=ds_list_find_value(path,i-1)
		//var var_angle=point_direction(tile2.x,tile2.y,var_tile_next.x,var_tile_next.y)
		//ds_list_replace(list_path_arrow_directions,i,var_angle)
		//}
	tile2.image_blend=c_teal
	tile2.image_alpha=0.5+(i==0)*0.5

	//scr_draw_arrow_on_path_tile(tile2)
	}


}
