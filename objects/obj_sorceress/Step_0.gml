/// @description Insert description here
// You can write your code in this editor


if(slow_autocast_is_on)
{
slow_icon_animation_index=(slow_icon_animation_index+slow_icon_animation_speed/room_speed) % 7
}
if(!slow_autocast_is_on)
{
slow_icon_animation_index=0
}