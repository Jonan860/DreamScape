window_set_fullscreen(1)
audio_group_load(jukebox)
draw_set_font(font0)
randomize()
scr_create_tile_on_map()
global.tile_selected = noone
global.selectedSpell = noone
global.clicked_tile = noone
global.hud = instance_create_layer(0, 0, "hud", obj_battle_hud)
instance_create_depth(0, 0, -100, obj_game)
global.player = instance_create_depth(0, 0, 0, obj_player)
global.enemy = instance_create_depth(0, 0, 0, obj_player)
global.creep_lord = instance_create_depth(0, 0, 0, obj_player)

global.saveData = {}
scr_tile_neighborhood_create()
scr_declare_non_habitable_tiles()
scr_declare_backline_tiles()
scr_tile_distances_calculate()
//global.ida=instance_create_depth(4*16+12*16*4,4*16+8*16*1,-1,obj_ida)
//global.ida.owner=global.player
//with(global.ida)
//{
//tile=instance_position(x,y,obj_tile)
//ds_map_replace(tile.occupants,"ground",self)
//scr_move_to_tile(100101)
//}

global.ida = scr_instance_create_at_tile_with_owner(obj_ida, 100223, global.player)
with(global.ida) {
	
	repeat(5) {
		scr_level_up()
	}
	HP = 1
}
with(scr_instance_create_at_tile_with_owner(obj_priest, 100222, global.player)) {
	dispel.lvl = 1
}

global.nils = scr_instance_create_at_tile_with_owner(obj_nils, 100102, global.player)
with(global.nils) {
	repeat(5) {
		scr_level_up()
	}
}
global.lille_skutt = scr_instance_create_at_tile_with_owner(obj_lille_skutt, 100225, global.player)
//scr_instance_create_at_tile_with_owner(obj_sorceress,100222,global.player)
//scr_instance_create_at_tile_with_owner(obj_priest,100224,global.player)
//scr_instance_create_at_tile_with_owner(obj_abomination,100008,global.enemy)
//var dread=scr_instance_create_at_tile_with_owner(obj_crypt_lord,100007,global.enemy)
//dread.lvl=6
//dread.spell_w_lvl=3
//dread.spell_e_lvl=2
//dread.spell_r_lvl=1
//with(dread)
//{
//scr_update_damage_reduction()
//}
var ban = scr_instance_create_at_tile_with_owner(obj_banshee, 100006, global.enemy)
ban.HP = 1
scr_instance_create_at_tile_with_owner(obj_crypt_fiend, 100019, global.enemy)
//var lich = scr_instance_create_at_tile_with_owner(obj_lich, 100007, global.enemy)
//with(lich) {
//	repeat(3) {
//		scr_level_up()	
//	}
//	frost_nova.lvl = 2
//	dark_ritual.lvl = 1
//}



//with(scr_instance_create_at_tile_with_owner(obj_crypt_lord, 100008, global.enemy)) {
//	repeat(7) {
//		scr_level_up()
//	}
//	spiked_carapace.lvl = 3
//	carrion_beetles.lvl = 3
//	locust_swarm.lvl = 1
//}
with(obj_tile) {
	if(tile_x == 18 and tile_y == 2) {
		other.hungry_hungry_lizard = scr_instance_create_at_tile_with_owner(obj_hungry_hungry_lizard, id, global.creep_lord)
		break;
	}
}
with(hungry_hungry_lizard) {
	HP = -10
	start_tile = tile
	with(obj_tile) {
		if(
		(tile_x == 18 and tile_y >= 2 and tile_y <= 8)
		or (tile_x == 17 and (tile_y >= 3 and tile_y <= 5))
		or (tile_x == 19 and (tile_y >= 3 and tile_y <= 5))
		)
		{
			ds_list_add(other.list_of_territory_tiles, id)
		}
    }
}

/*ghoul2=instance_create_depth(4*16+12*16*4,4*16+8*16*2,-1,obj_ghoul)
ghoul2.owner=global.player
with(ghoul2)
{
 tile=instance_position(x,y,obj_tile)
tile.occupant_ground=self
scr_move_to_tile(100102)
}*/
//scr_instance_create_at_tile_with_owner(obj_ghoul,100102,global.enemy)
/*
ghoul3=instance_create_depth(4*16+12*16*4,4*16+8*16*3,-1,obj_ghoul)
ghoul3.owner=global.enemy
with(ghoul3)
{
 tile=instance_position(x,y,obj_tile)
tile.occupant_ground=self
scr_move_to_tile(100007)
}
*/
//scr_instance_create_at_tile_with_owner(obj_ghoul,100007,global.enemy)
/*ghoul4=instance_create_depth(4*16+12*16*4,4*16+8*16*4,-1,obj_ghoul)
ghoul4.owner=global.enemy
with(ghoul4)
{
 tile=instance_position(x,y,obj_tile)
tile.occupant_ground=self
scr_move_to_tile(100006)
}
*/
//scr_instance_create_at_tile_with_owner(obj_ghoul,100006,global.enemy)
/*
ghoul5=instance_create_depth(4*16+12*16*4,4*16+8*16*5,-1,obj_ghoul)
ghoul5.owner=global.enemy
with(ghoul5)
{
 tile=instance_position(x,y,obj_tile)
tile.occupant_ground=self
scr_move_to_tile(100005)
}
*/
//scr_instance_create_at_tile_with_owner(obj_ghoul,100005,global.enemy)

//sork6=instance_create_depth(4*16+12*16*4,4*16+8*16*6,-1,obj_sorceress)
//sork6.owner=global.player
//with(sork6)
//{
//tile=instance_position(x,y,obj_tile)
//tile.occupant_ground=id
//scr_move_to_tile(100230)
//}

//scr_instance_create_at_tile_with_owner(obj_ghoul,100103,global.player)

//var footman1=instance_create_depth(4*16+12*16*5,4*16+8*16*5,-1,obj_golden_dragon)
//footman1.owner=global.player
//with(footman1)
//{
//tile=instance_position(x,y,obj_tile)
//tile.occupant_ground=id
//scr_move_to_tile(100092)
//}

//scr_instance_create_at_tile_with_owner(obj_footman,100104,global.player)
//scr_instance_create_at_tile_with_owner(obj_ghoul,100222,global.enemy)
//scr_instance_create_at_tile_with_owner(obj_elven_archer,100022,global.player)
//barrack1=instance_create_depth(4*16+12*16*6,4*16+8*16*5,-1,obj_human_barrack)
//barrack1.owner=global.player
//with(barrack1)
//{
//tile=instance_position(x,y,obj_tile)
//tile.occupant_ground=self
//scr_move_to_tile(100105)
//}
scr_instance_create_at_tile_with_owner(obj_human_barrack, 100104, global.player)
scr_instance_create_at_tile_with_owner(obj_money_tree, 100103, global.player)
with(hungry_hungry_lizard) {
	scr_eat_enemy(global.nils)
}

global.ida_dialogue = instance_create_depth(camera_get_view_width(view_camera[0])/2, 7/8 * camera_get_view_height(view_camera[0]), 0, obj_ida_dialogue)
global.lille_skutt_dialogue = instance_create_depth(camera_get_view_width(view_camera[0])/2, 7/8 * camera_get_view_height(view_camera[0]), 0, obj_lille_skutt_dialogue)
var vra = camera_get_view_height(view_camera[0])
var cam = camera_get_view_y(view_camera[0])
global.dialogue = instance_create_layer(camera_get_view_width(view_camera[0])/2, 7/8 * camera_get_view_height(view_camera[0]), "hud", obj_dialogue)
global.cursor = instance_create_depth(0, 0, 0, obj_cursor)

//Ditt beställningsnummer är:970405
//Ditt kundnummer (ID) är:10261102