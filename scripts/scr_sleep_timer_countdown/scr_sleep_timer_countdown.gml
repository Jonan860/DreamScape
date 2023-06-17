// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sleep_timer_countdown(){
with(obj_unit)
{
if(sleep_timer>0)
{
sleep_timer-=1/room_speed
if(sleep_timer<=0)
{
	sleep_timer=0
phase="idle"
action_bar=0
}

}
}
}