// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_locust_perform(){
if(object_index=obj_crypt_lord)
{
if(locust_activated=1)
{
if(active_locusts<max_active_locusts and time_until_next_locust<=0)
{
var locust=instance_create_depth(x,y,0,obj_locust)
with(locust)
{
owner=other.id
}
active_locusts+=1
time_until_next_locust=locust_spawn_interval_sec
}
else
{
	time_until_next_locust=max(0,time_until_next_locust-1/room_speed)
}
locust_time_left-=1/room_speed
if(locust_time_left<=0)
{
locust_activated=0
}
}
}
}