/// @description Insert description here
// You can write your code in this editor
event_inherited() //rallypoint draw_self()
if(global.tile_selected!=noone)
{
if(global.tile_selected.selected_unit==self)
{
draw_text(human_barracks_queue_length_x,human_barracks_queue_lenght_y,human_barracks_build_queue_lenght)
//draw_healthbar(human_barracks_progress_bar_x1,human_barracks_progress_bar_y1,human_barracks_progress_bar_x2,human_barracks_progress_bar_y2,human_barracks_build_progress,c_black,c_lime,c_green,0,1,0)
draw_text(arcane_sanctum_queue_length_x,arcane_sanctum_queue_lenght_y,arcane_sanctum_build_queue_lenght)
}
}

if(is_building!=noone and is_building.unfinished!=0)
{
draw_sprite(spr_hammer,spr_hammer_sub,(x+is_building.x)/2,(y+is_building.y)/2)
}