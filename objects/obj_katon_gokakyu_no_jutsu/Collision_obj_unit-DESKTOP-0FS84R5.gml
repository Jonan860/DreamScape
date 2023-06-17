/// @description Insert description here
// You can write your code in this editor

	if(ds_list_find_index(nisses_lista,other)<0 and other!=global.ida)
{
	other.HP-=scr_get_damage_from_stats(global.ida,other,2)
	ds_list_add(nisses_lista,other)
}
