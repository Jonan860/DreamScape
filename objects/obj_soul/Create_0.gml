object = noone 
alarm[0] = room_speed * 60 //could be gamespeed_fps

save = function() {
	var s = {}
	s.object = object
	s._x = x
	s._y = y
	s.alarm = alarm[0]
	s.image_alpha = image_alpha
	s.image_xscale = image_xscale
	s.image_yscale = image_yscale
	s.tileX = tile.tile_x
	s.tileY = tile.tile_y
	return s
}

load = function(s) {
	object = s.object
	x = s._x
	y = s._y
	image_xscale = s.image_xscale
	image_yscale = s.image_yscale
	alarm[0] = s.alarm
	image_alpha = s.image_alpha
	tile = getTile(s.tileX, s.tileY)
}