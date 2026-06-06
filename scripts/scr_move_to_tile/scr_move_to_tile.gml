function scr_move_to_tile(tile2) {
	if(self.object_index == obj_sakura and instance_exists(obj_iryo_ninjutsu_animator)) {
		show_debug_message("hejsan")
	}
	if(scr_occupiable(tile2, altitude)) {
		if(tile != noone) {
			tile.occupants[?altitude] = array_filter(tile.occupants[? altitude], function(value, index) {return value != self.id})
			//array_remove_value(homeland, id)
		}
		if(global.tile_selected == tile) {
			
				tile.selected_units = array_filter(tile.selected_units, function(value, index) {return value != id})
				//array_remove_value(selected_units, other.id)
			 
			global.tile_selected = tile2
		}
		tile = tile2
		//x = tile.x; y = tile.y
		var var_altitude_list = tile.occupants[? altitude]
		array_push(var_altitude_list, id)
		with(tile2) {
			scr_update_selected_list()
		}
	}
}
