// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_earthshatter_jump_countdown(){
	with(global.ida)
	{
		if(time_until_earthshatter_impact>=0)
		{
time_until_earthshatter_impact-=1/room_speed
		}
	}
}