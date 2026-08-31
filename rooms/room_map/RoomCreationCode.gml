window_set_fullscreen(1)
#macro debugg true
audio_group_load(jukebox)
draw_set_font(font0)
randomize()
global.player = instance_create_depth(0, 0, 0, obj_player)
global.enemy = instance_create_depth(0, 0, 0, obj_player)
global.creep_lord = instance_create_depth(0, 0, 0, obj_player)
global.gameBoard = instance_create_layer(0, 0, "tiles", obj_game_board)

global.tile_selected = noone
global.selectedSpell = noone
global.clicked_tile = noone
global.hud = instance_create_layer(0, 0, "hud", obj_battle_hud)

var footmodelOffensive = instance_create_depth(-10000, -10000, 0, obj_footman)
var footmodelDefensive = instance_create_depth(-10000, -10000, 0, obj_footman)
global.footmanVsFootman = {}
with(footmodelOffensive) {
	scr_convert_damage_to_accuracy_included_damage(footmodelDefensive)
	attackEffectWrapper(footmodelOffensive, footmodelDefensive, true)
	global.footmanVsFootman.damageRate = (footmodelDefensive.max_HP - footmodelDefensive.HP) / footmodelDefensive.attack_cost * room_speed
	global.footmanVsFootman.lifetime1HP = 1 / global.footmanVsFootman.damageRate
}

instance_destroy(footmodelOffensive, false)
instance_destroy(footmodelDefensive, false)

instance_create_depth(0, 0, -100, obj_game)


global.saveData = {}

with(scr_instance_create_at_tile_with_owner(obj_jonathan, getTile(10, 2), global.enemy)) {
	repeat(10) {
		scr_level_up()
	}
	repeat(3)  { 
		unholy_aura.level_up()
		death_coil.level_up()
		death_pact.level_up()
	}
	ninja_gos.level_up()
	unholy_aura.iconPerform()
}

//scr_instance_create_at_tile_with_owner(obj_banshee, getTile(10, 2), global.enemy)
//with(global.jonathan) {
//	HP = max_HP/4
//	repeat(9) {
//		scr_level_up()
//	}
//	repeat(3) {
//		death_pact.level_up()
//	}
//	repeat(3) {
//		death_coil.level_up()
//	}
//	repeat(3) {
//		unholy_aura.level_up()
//	}
//	unholy_aura.iconPerform()
//}
scr_instance_create_at_tile_with_owner(obj_crypt_fiend, getTile(12, 2), global.enemy)
with(scr_instance_create_at_tile_with_owner(obj_crypt_fiend, getTile(8, 2), global.enemy)){
	HP = max_HP / 6
}

scr_instance_create_at_tile_with_owner(obj_footman, getTile(12, 10), global.player)

with(scr_instance_create_at_tile_with_owner(obj_sakura, getTile(2, 0), global.player)) {
	tied_up = true
	
	var var_alt_list = tile.occupants[?altitude]
	tile.occupants[?altitude] = array_filter(var_alt_list, function(value, index) {return value != id})
	//array_remove_value(var_alt_list, id)
	repeat(5) {
		scr_level_up()
	}
	iryo_ninjutsu.level_up()
	kai.level_up()
	shannaro.level_up()
	shannaro.level_up()
	shannaro.level_up()
}

scr_instance_create_at_tile_with_owner(obj_valkyrie, getTile(7, 15), global.player)

with(scr_instance_create_at_tile_with_owner(obj_ida, getTile(10, 14), global.player))
{
repeat(10) {
	scr_level_up()
}
}
scr_instance_create_at_tile_with_owner(obj_nils, getTile(18, 2), global.player)

scr_instance_create_at_tile_with_owner(obj_lille_skutt, getTile(13, 15), global.player)

hungry_hungry_lizard = scr_instance_create_at_tile_with_owner(obj_hungry_hungry_lizard, getTile(18, 2), global.creep_lord)
with(hungry_hungry_lizard) {
	start_tile = tile
	loopTilesStart
		if(
		(tile_x == 18 and tile_y >= 2 and tile_y <= 8)
		or (tile_x == 17 and (tile_y >= 3 and tile_y <= 5))
		or (tile_x == 19 and (tile_y >= 3 and tile_y <= 5))
		)
		{
			array_push(other.list_of_territory_tiles, self)
		}
	loopTilesEnd
}

troll_priest1 = scr_instance_create_at_tile_with_owner(obj_troll_priest, getTile(4, 0), global.creep_lord)
troll_priest2 = scr_instance_create_at_tile_with_owner(obj_troll_priest, getTile(0, 0), global.creep_lord)
troll_trapper1 = scr_instance_create_at_tile_with_owner(obj_troll_trapper, getTile(1, 1), global.creep_lord)
troll_trapper2 = scr_instance_create_at_tile_with_owner(obj_troll_trapper, getTile(3, 1), global.creep_lord)
troll_warlord = scr_instance_create_at_tile_with_owner(obj_troll_warlord, getTile(2, 2), global.creep_lord)

var buddies = [troll_priest1, troll_priest2, troll_trapper1, troll_trapper2, troll_warlord]
assignTrollTerritory(troll_priest1, buddies)
assignTrollTerritory(troll_priest2, buddies)
assignTrollTerritory(troll_trapper1, buddies)
assignTrollTerritory(troll_trapper2, buddies)
assignTrollTerritory(troll_warlord, buddies)



function assignTrollTerritory(var_inst, buddies) {
	with(var_inst) {
		creep_buddies = buddies
		start_tile = tile
		loopTilesStart
			if(tile_x <= 5 and tile_x >= 0 and tile_y <= 10 and tile_y >=0 and !(tile_x == 2 and tile_y == 0))
			{
				array_push(other.list_of_territory_tiles, self)
			}
		loopTilesEnd
	}
}




scr_instance_create_at_tile_with_owner(obj_human_barrack, getTile(12, 16), global.player)
scr_instance_create_at_tile_with_owner(obj_money_tree, getTile(10, 16), global.player)
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