// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_earthquake_crack_countdown(){
with(obj_tile)
{
if(draw_earthshatter)
{
time_until_earthshatter_gone-=1/room_speed
if(time_until_earthshatter_gone<=0)
{
draw_earthshatter=0
depth+=1
}
}
}
}