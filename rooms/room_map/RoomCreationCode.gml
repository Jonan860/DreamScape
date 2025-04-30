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
instance_create_depth(0, 0, -100, obj_game)


global.saveData = {}

//with(scr_instance_create_at_tile_with_owner(obj_jonathan, getTile(10, 2), global.enemy)) {
//	repeat(3) {
//		scr_level_up()
//	}
//	unholy_aura.level_up()
//	death_coil.level_up()
//	death_pact.level_up()
//	unholy_aura.iconPerform()
//}

scr_instance_create_at_tile_with_owner(obj_sylvanas, getTile(10, 2), global.enemy)



with(scr_instance_create_at_tile_with_owner(obj_sakura, getTile(8, 14), global.player)) {
	repeat(5) {
		scr_level_up()
	}
	iryo_ninjutsu.level_up()
	kai.level_up()
	shannaro.level_up()
	shannaro.level_up()
	shannaro.level_up()
}

scr_instance_create_at_tile_with_owner(obj_ida, getTile(10, 14), global.player)
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