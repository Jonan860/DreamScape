/// @description Insert description here
// You can write your code in this editor
if(global.game.unit_to_kawarimi1=self or global.game.unit_to_kawarimi2=self)
{
	draw_set_color(c_yellow)
	draw_set_alpha(0.5)
draw_circle(x,y,128,0)
draw_set_alpha(1)
}
for(i=1;i<=ds_list_size(path)-1;i+=1)
{
var var_tile=ds_list_find_value(path,i)
var var_arrow_direction=ds_list_find_value(list_path_arrow_directions,i)
draw_sprite_ext(spr_red_arrow,0,var_tile.x,var_tile.y,sprite_get_width(spr_hexagon_pink)/3/sprite_get_width(spr_red_arrow),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_red_arrow),var_arrow_direction,c_white,0.5)
}
if(!eaten)
{
	if(slowed)
	{
	draw_sprite_ext(spr_slow,0,x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_slow),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_slow),0,-1,1)
	}
	if(phase="reviving")
	{
	draw_sprite_ext(spr_golden_wings,0,x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_golden_wings),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_golden_wings),0,-1,1)
	}
	
draw_self()
if(phase="sleep")
	{
draw_sprite_ext(spr_sleep,0,x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_sleep),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_sleep),0,-1,1)
	}

draw_healthbar(x-HP_bar_width/2, y+hp_bar_translate_y, x+HP_bar_width/2, y+hp_bar_translate_y+HP_bar_height,100*HP/max_HP,c_black,c_red,c_green,0,1,0)
draw_healthbar(x-sprite_width/4, y+sprite_height*3/8- sprite_height*1/4*1/8, x+sprite_width/4, y+sprite_height*3/8- 2*sprite_height*1/4*1/8,100*action_bar/max_action_bar,c_black,c_red,c_green,0,1,0)
//if(max_mana!=noone)
//{
//draw_healthbar(x-sprite_width/4, y+sprite_height*3/8+sprite_height*1/4*1/8, x+sprite_width/4, y+sprite_height*3/8+2*sprite_height*1/4*1/8,100*mana/max_mana,c_black,c_aqua,c_blue,0,1,0)
//}
if(missing_time>0)
{
draw_text_transformed_color(x,y+sprite_height/4,"Miss",2,2,0,c_red,c_red,c_red,c_red,1)
}
}

//if(global.tile_selected!=noone)
//{
//if(global.tile_selected.selected_unit=self)
//{


//}
//}
if(freezed)
{
draw_sprite(spr_ice_block,-1,x,y)
}
if(holy_lighted)
{
draw_sprite(spr_holy_light,-1,x,y)
}

