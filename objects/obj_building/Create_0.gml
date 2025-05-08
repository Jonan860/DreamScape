
var var_tile_scale = sprite_get_height(spr_hexagon_pink)/max(sprite_height,sprite_width)
image_yscale = var_tile_scale; image_xscale = var_tile_scale
rally_tile = noone //is a tile
tile = coordToTile()
altitude = ALTITUDES.ground
element = ELEMENTS.fortified
build_progress = 0 // of hundred
building_progress_bar_x1 = x - sprite_width * 3/8
building_progress_bar_x2 = x + sprite_width * 3/8
building_progress_bar_y1 = y - sprite_height * 3/8
building_progress_bar_y2 = y - sprite_height * 2/8
evasiveness = 0

buttonToSkill = ds_map_create()
save = function() {
	var s = {}
	s.x = x; s.y = y
	if(rally_tile != noone) {
		s.rally_tileX = rally_tile.tile_x
		s.rally_tileY = rally_tile.tile_y
	}
	s.tileX = tile.tile_x; s.tileY = tile.tile_y
	s.build_progress = build_progress
	if(variable_instance_exists(id, "queue_list")) {
		s.queue_list = queue_list
	}
	s.owner = global.player // behövs för kompelering
	s.idd = id
	return s
}

load = function(s) {
	x = s.x; y = s.y
	idd = s.idd
	if(variable_struct_exists(s, "rally_tileX")) {
		rally_tile = getTile(s.rally_tileX, s.rally_tileY)
	}
	if(variable_instance_exists(id, "queue_list")) {
		queue_list = s.queue_list
	}
	build_progress = s.build_progress
	scr_move_to_tile(getTile(s.tileX, s.tileY))
	owner = global.player //ja det ska va så
}
