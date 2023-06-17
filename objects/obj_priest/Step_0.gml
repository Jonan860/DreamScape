/// @description Insert description here
// You can write your code in this editor


if(heal_autocast_is_on)
{
heal_icon_animation_index=(heal_icon_animation_index+heal_icon_animation_speed/room_speed) % 7
}
if(!heal_autocast_is_on)
{
heal_icon_animation_index=0
}