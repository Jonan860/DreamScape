
#macro loopTilesStart for(var i = 0; i < ds_list_size(global.gameBoard.tiles); i++) {with(global.gameBoard.tiles[|i]) {
#macro loopTilesEnd }}
#macro loopTilesStart2 for(var j = 0; j < ds_list_size(global.gameBoard.tiles); j++) {with(global.gameBoard.tiles[|j]) {


function mouseToTile(){
	candidate = noone
	compare = 10000
	loopTilesStart
		var distance = point_distance(mouse_x, mouse_y, _x, _y) 
		if(distance < other.compare) {
			other.compare = distance
			other.candidate = self
		}
	loopTilesEnd
	return candidate
}

function getTile(tileX, tileY) {
	loopTilesStart
		if(tile_x == tileX and tile_y == tileY) {
			return self
		}
	loopTilesEnd
	return noone
}

function createTile() constructor {
	indexSprite = noone
	_x = 0; _y = 0
	imageBlend = c_white
	tile_x = noone; tile_y = noone
	layer = layer_get_id("tiles")
	south_east_tile = noone; south_west_tile = noone; north_east_tile = noone
	north_west_tile = noone; north_tile = noone; south_tile = noone
	west_tile = noone; east_tile = noone
	list_of_neighbours = ds_list_create()
	ds_list_add(list_of_neighbours, south_east_tile, south_west_tile, north_east_tile, north_west_tile, north_tile, south_tile)
	occupants = ds_map_create()
	invisibles_list = ds_list_create()
	grounds_list = ds_list_create()
	airs_list = ds_list_create()
	ds_map_add(occupants, ALTITUDES.ground, grounds_list)
	ds_map_add(occupants, ALTITUDES.invisible, invisibles_list)
	ds_map_add(occupants, ALTITUDES.air, airs_list)
	path_find_checked = 0
	distance = 100
	selected_units = ds_list_create()
	habitable = 1
	is_back_tile = noone
	ds_map_distances = ds_map_create()
	draw_earthshatter = 0
	time_until_earthshatter_gone = 0
	candidate = noone
	compare = 0
	drawTile = function() {
		if(habitable = 0) {
			imageBlend = c_black
		}
		if(is_back_tile) {
			imageBlend = c_yellow
		}
		draw_sprite_ext(indexSprite, 0, _x, _y, 1, 1, 0, imageBlend, 1)
		if(global.tile_selected == self) {
			draw_set_color(c_green)
			draw_sprite(spr_selection_circle, 0, _x, _y)
		}
		if(debugg) {
			draw_text(_x, _y, string(tile_x) + "," + string(tile_y))
		}
	}
	reduceDebuffDuration = function(dispelAmount) {
		var altitudes = [ALTITUDES.ground, ALTITUDES.air, ALTITUDES.invisible]
		for(var i = 0; i < array_length(altitudes); i++) {
			var _list = occupants[? altitudes[i]]
			for(var j = 0; j < ds_list_size(_list); j++) {
				with(_list[| j]) {
					if(object_is_ancestor(object_index, obj_unit)) {
						reduceDebuffDuration(dispelAmount)
					}
				}
			}
		}
	}
}