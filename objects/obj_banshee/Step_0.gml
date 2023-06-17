/// @description Insert description here
// You can write your code in this editor
if(curse_autocast_is_on)
{
curse_icon_animation_index=(curse_icon_animation_index+curse_icon_animation_speed/room_speed) % 7
}
if(!curse_autocast_is_on)
{
curse_icon_animation_index=0
}