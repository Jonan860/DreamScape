/// @description Insert description here
// You can write your code in this editor
event_inherited() //rallypoint draw_self()


if(is_building!=noone and is_building.unfinished!=0)
{
draw_sprite(spr_hammer,spr_hammer_sub,(x+is_building.x)/2,(y+is_building.y)/2)
}