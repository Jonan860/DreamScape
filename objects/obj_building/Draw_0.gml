if(unfinished) {
	draw_sprite(spr_unfinished_building, 0, x, y)
	draw_healthbar(building_progress_bar_x1, building_progress_bar_y1, building_progress_bar_x2, building_progress_bar_y2, build_progress, c_black, c_green,c_green, 0, 0, 0)
} else {
	draw_self()
	draw_healthbar(x-sprite_width/4, y+sprite_height*3/8, x+sprite_width/4, y+sprite_height*3/8- sprite_height*1/4*1/8,100*HP/max_HP,c_black,c_red,c_green,0,1,0)
}

if(global.tile_selected != noone) {
	if(ds_list_find_index(global.tile_selected.selected_units, id) == 0) {
		if(rally_tile != noone) {
			draw_sprite(spr_rally_point_flag, 0, rally_tile.x, rally_tile.y)
		}
	}
}