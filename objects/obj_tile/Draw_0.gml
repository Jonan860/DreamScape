/// @description Insert description here
// You can write your code in this editor
if(habitable=0)
{
image_blend=c_black
}
if(is_back_tile)
{
image_blend=c_yellow
}
draw_self()
/*
draw_text(x,y,"("+string(tile_x)+","+string(tile_y)+")")
draw_text(x,y+32,string(distance))
draw_text(x,y-32,string(id))
*/
if(draw_earthshatter)
{
draw_sprite_ext(spr_earthquake_crack,-1,x,y,4*sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_earthquake_crack),4*sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_earthquake_crack),0,c_white,1)
}
if(global.tile_selected==id)
{
	draw_set_color(c_green)
	
draw_sprite(spr_selection_circle,0,x,y)
}

