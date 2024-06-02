tile = noone
instance = noone
revival_time_left_sec = 60 //seconds
total_revival_time_sec = 60 ///probably will be depend on lvl and amount of death experienced
image_blend = c_yellow

save = function() {
	var s= {}
	s.x = x; s.y = y
	s.instance = instance
	s.revival_time_left_sec = revival_time_left_sec
}
