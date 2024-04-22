
var var_tile_scale = sprite_get_height(spr_hexagon_pink)/max(sprite_height,sprite_width)
image_yscale = var_tile_scale
image_xscale = var_tile_scale
rally_tile = noone //is a tile
tile = noone
altitude = "ground"
element = "Fortified"
build_progress = 0 // of hundred
building_progress_bar_x1 = x - sprite_width * 3/8
building_progress_bar_x2 = x + sprite_width * 3/8
building_progress_bar_y1 = y - sprite_height * 3/8
building_progress_bar_y2 = y - sprite_height * 2/8
evasiveness = 0
buttonToSkill = ds_map_create()
save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.rally_tile = rally_tile
	if(variable_instance_exists(id, queue_list)) {
		s.queue_list = queue_list
	}
}

load = function(s) {
	x = s.x
	y = s.y
	rally_tile = s.rally_tile
	if(variable_instance_exists(id, queue_list)) {
		queue_list = s.queue_list
	}
}
