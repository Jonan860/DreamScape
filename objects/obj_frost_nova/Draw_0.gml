/// @description Insert description here
// You can write your code in this editor


if(time_until_frost_nova_sec>0)
{
draw_sprite_ext(spr_frost_nova_bomb,0,frost_nova_target.x,frost_nova_target.y,(1+1*(frost_nova_total_time_sec-time_until_frost_nova_sec)/frost_nova_total_time_sec)*sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_frost_nova_bomb),(1+1*(frost_nova_total_time_sec-time_until_frost_nova_sec)/frost_nova_total_time_sec)*sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_frost_nova_bomb),time_until_frost_nova_sec*360 % 360,c_white,0.8)

}
else if(time_until_frost_nova_after_effect_end_sec>0)
{
with(frost_nova_target)
{
	
draw_sprite_ext(spr_frost_nova_ice_spikes,ceil((other.total_time_frost_nova_after_effect_end_sec-other.time_until_frost_nova_after_effect_end_sec)*45),x,y,sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_frost_nova_ice_spikes),sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_frost_nova_ice_spikes),0,c_white,0.8)

for(i=0;i<=ds_list_size(list_of_neighbours)-1;i+=1)
{
var var_tile=ds_list_find_value(list_of_neighbours,i)
if(var_tile!=noone)
{
draw_sprite_ext(spr_frost_nova_ice_spikes,ceil((other.total_time_frost_nova_after_effect_end_sec-other.time_until_frost_nova_after_effect_end_sec)*45),var_tile.x,var_tile.y,sprite_get_width(spr_hexagon_pink)/2/sprite_get_width(spr_frost_nova_ice_spikes),sprite_get_height(spr_hexagon_pink)/2/sprite_get_height(spr_frost_nova_ice_spikes),0,c_white,0.8)
}
}

}
}