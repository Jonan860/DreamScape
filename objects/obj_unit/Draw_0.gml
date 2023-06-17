/// @description Insert description here
// You can write your code in this editor
if(global.game.unit_to_kawarimi1=id or global.game.unit_to_kawarimi2=id)
{
	draw_set_color(c_yellow)
	draw_set_alpha(0.5)
draw_circle(x,y,128,0)
draw_set_alpha(1)
}
if(owner=global.player)
{
for(i=1;i<=ds_list_size(path)-1;i+=1)
{
var var_tile=ds_list_find_value(path,i)
var var_arrow_direction=ds_list_find_value(list_path_arrow_directions,i)
draw_sprite_ext(spr_red_arrow,0,var_tile.x,var_tile.y,sprite_get_width(spr_hexagon_pink)/3/sprite_get_width(spr_red_arrow),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_red_arrow),var_arrow_direction,c_white,0.5)
}
}
if(!eaten)
{
	if(scr_is_debuffed(global.slow_struct))
	{
	draw_sprite_ext(spr_slow,0,x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_slow),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_slow),0,-1,1)
	}
	
	if(phase="sacrificed")
	{
	if(time_until_dark_ritual_sacrifice_sec>0)
	{
		draw_set_color(c_purple)
	draw_sprite_ext(spr_heal_animation,0,x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_heal_animation),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_heal_animation),0,-1,-16*time_until_dark_ritual_sacrifice_sec*(time_until_dark_ritual_sacrifice_sec-global.dark_ritual_animation_total_time))
	draw_set_color(c_white)
	}
	}
	if(phase="reviving")
	{
	draw_sprite_ext(spr_golden_wings,0,x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_golden_wings),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_golden_wings),0,-1,1)
	}
	if(altitude="invisible")
	{
	image_alpha=0.5
	var image_xsave=image_xscale
	var image_ysave=image_yscale
	image_xscale*=1.1
	image_yscale*=1.1
	draw_self()
	image_xscale=image_xsave
	image_yscale=image_ysave
	}
	else
	{
	image_alpha=1
	draw_self()
	}

if(heal_animation_time_left_in_sec>0)
	{
	draw_sprite_ext(spr_heal_animation,0,x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_heal_animation),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_heal_animation),0,-1,-16*heal_animation_time_left_in_sec*(heal_animation_time_left_in_sec-0.5))
	}
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
if(scr_is_debuffed(global.freeze_struct))
{
draw_sprite(spr_ice_block,-1,x,y)
}
else if(stunned)
{
draw_sprite_ext(spr_stun_vortex,8*time_until_stunned_clear % 8,x,y-2/3*sprite_height/2,1/2,1/2,0,c_white,0.5)
}
if(scr_is_debuffed(global.curse_struct))
{
draw_sprite_ext(spr_curse_animation,0,x,y,sprite_width/(3*sprite_get_width(spr_curse_animation)),sprite_height/(3*sprite_get_height(spr_curse_animation)),0,c_white,1)
}
if(holy_lighted)
{
draw_sprite(spr_holy_light,-1,x,y)
}

