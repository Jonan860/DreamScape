/// @description Insert description here
// You can write your code in this editor
x=creator.x
y=creator.y

counter_to_attack+=1
if(counter_to_attack>=creator.attack_cost)
{
counter_to_attack=0
var var_list_of_tiles=ds_list_create()
for(i=1;i<=range;i+=1)
{
	var var_list_of_additional_tiles=scr_get_tiles_at_range(creator.tile,range)
scr_ds_list_append(var_list_of_tiles,var_list_of_additional_tiles) //need to for loop if range
}
for(i=0;i<=ds_list_size(var_list_of_tiles)-1;i+=1)
{
var var_tile=ds_list_find_value(var_list_of_tiles,i)
var var_occupant_ground=ds_list_find_value(var_tile.grounds_list,0)
if(!is_undefined(var_occupant_ground))
{
if(scr_is_enemies(creator,var_occupant_ground))
{
if(scr_is_attack_hitting(creator.accuracy,var_occupant_ground.evasiveness))
{
	creator.damage*=creator.spell_e_damage_multiplier
	var store_target=creator.target
	creator.target=var_occupant_ground
	with(creator)
	{
	scr_attack_target_nils()
	}
	creator.target=store_target
//scr_attack_hp_reduction(creator,var_occupant_ground)
creator.damage*=1/creator.spell_e_damage_multiplier
}
}
}
}
}
image_angle+=0  //360*1/(rotation_time*game_get_speed(gamespeed_fps))