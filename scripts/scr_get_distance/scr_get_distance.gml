#macro NEA 33.69
#macro NWA 146.31
#macro SWA 213.69

#macro TDD 115.38
function scr_get_distance(start_tile, end_tile) {
	if(start_tile == noone or end_tile == noone) {
		show_debug_message("distance calculated to tile that does not exist")
		return 1000 
	}
	
	var startx = start_tile.x; var starty = start_tile.y
	var endx = end_tile.x; var endy = end_tile.y
	var angle = point_direction(startx, starty, endx, endy)
	if(angle <= NEA) {
		angle += 180
	}

	if((NEA < angle and angle <= 90) or ((NEA < angle - 180 and angle - 180 <= 90))) {var newbase11 = TDD * cos(NEA * pi/180); var newbase12 = -TDD * sin(NEA * pi/180); var newbase21 = 0; var newbase22 = -128;}
	if((90 < angle and angle <= NWA) or (90 < angle - 180 and angle - 180 <= NWA)){ var newbase11 = 0; var newbase12 = -128; var newbase21 = TDD * cos(NWA * pi/180); var newbase22 = -TDD * sin(NWA * pi/180);}
	if((NWA < angle and angle <= SWA) or (NWA < angle - 180 and angle - 180 <= SWA)){ var newbase11 = TDD * cos(NWA * pi/180); var newbase12 = -TDD * sin(NWA * pi/180); var newbase21 = TDD * cos(SWA * pi/180); var newbase22 = -TDD * sin(SWA * pi/180);}
	///rest not needed since negative base does not change distance
	return round(1/2 * 1/(abs(newbase11 * newbase22 - newbase12 * newbase21)) * (abs(newbase22*(endx-startx) - newbase21*(endy - starty)) + abs(-newbase12*(endx - startx) + newbase11*(endy - starty)))) 
}
