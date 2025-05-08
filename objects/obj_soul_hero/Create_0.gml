tile = noone
instance = noone
revival_time_left_sec = 60 //seconds
total_revival_time_sec = 60 ///probably will be depend on lvl and amount of death experienced
image_blend = c_yellow

resurrect = function() {
	with(instance) {
		scr_make_room_for_instance_on_tile(other.tile, altitude)
		scr_move_to_tile(other.tile)
		phase = UNIT_PHASES.idle
		action_bar = 0 //2021
	}
	instance_destroy()
}
			
save = function() {
	var s= {}
	s._x = x; s._y = y
	s.tileX = tile.tile_x
	s.tileY = tile.tile_y
	s.instance = instance
	s.revival_time_left_sec = revival_time_left_sec
	s.image_xscale = image_xscale
	s.image_yscale = image_yscale
	return s
}

load = function(s) {
	instance = s.instance
	x = s._x
	y = s._y
	image_xscale = s.image_xscale
	image_yscale = s.image_yscale
	tile = getTile(s.tileX, s.tileY)
	revival_time_left_sec = s.revival_time_left_sec
}
