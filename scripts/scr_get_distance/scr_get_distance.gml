/// @scr_get_distance(start_tile, end_tile)
/// @param start_tile
/// @param end_tile
/// path har start tile och end tile
function scr_get_distance(argument0, argument1) {

	var start_tile=argument0
	var end_tile=argument1

	if(start_tile==noone or end_tile=noone)
	{
		show_debug_message("distance calculated to tile that does not exist")
	return 1000 
	}
	var startx=start_tile.x
	var starty=start_tile.y
	var endx=end_tile.x
	var endy=end_tile.y
	if(end_tile=100067 or start_tile=100067)
	{
	random(1)
	}
	var angle=point_direction(startx,starty,endx,endy)
	if(angle<=33.69)
	{
	angle+=180
	}

	 if((33.69<angle and angle<=90) or ((33.69<angle-180 and angle-180<=90))){var newbase11=115.38*cos(33.69*pi/180); var newbase12=-115.38*sin(33.69*pi/180); var newbase21=0; var newbase22=-128;}
	if((90<angle and angle<=146.31) or (90<angle-180 and angle-180<=146.31)){ var newbase11=0; var newbase12=-128; var newbase21=115.38*cos(146.31*pi/180); var newbase22=-115.38*sin(146.31*pi/180);}
	if((146.31<angle and angle<=213.69) or (146.31<angle-180 and angle-180<=213.69)){ var newbase11=115.38*cos(146.31*pi/180); var newbase12=-115.38*sin(146.31*pi/180); var newbase21=115.38*cos(213.69*pi/180); var newbase22=-115.38*sin(213.69*pi/180);}
	///rest not needed since negative base does not change distance

	return round(1/2*1/(abs(newbase11*newbase22-newbase12*newbase21))*(abs(newbase22*(endx-startx)-newbase21*(endy-starty))+abs(-newbase12*(endx-startx)+newbase11*(endy-starty))))  ///1/2 för skalning 08-23-19




}
