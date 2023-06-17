// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stun_countdown(){
with(obj_unit)
{
if(stunned)
{
time_until_stunned_clear-=1/room_speed
if(time_until_stunned_clear<=0)
{
time_until_stunned_clear=0
stunned=0
}
}
}
}