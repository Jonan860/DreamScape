global.game = id
global.camera_width = camera_get_view_width(view_camera[0])
global.camera_height = camera_get_view_height(view_camera[0])
optimal_path = []
max_window_width = window_get_width(); max_window_height = window_get_height()
min_window_width = 2048/2; min_window_height = 1179/2

global.enemy_ai_think_time_in_sec = 5
global.player_ai_think_time_in_sec = 0.1
global.player_idle_ai_think_time_in_sec = 0.3
global.recruitableUpgrades = [SPELLS.buildInvisibility, SPELLS.buildDefend, SPELLS.buildDispel, SPELLS.buildImprovedBows]
global.recruitedUpgrades = []
list_jukebox = []
array_push(list_jukebox, sound_canon, sound_darth_nader, sound_head_of_nasa, sound_guitarmass, sound_infected_mushroom_kazabubu, sound_infected_mushroom_slowly, sound_overwerk, sound_sharxpowa, sound_soulji_murder, sound_spitfire)

global.map_object_to_costs = ds_map_create() /// look row below for content!!
scr_map_object_to_cost_build()
global.map_objects_to_build_time = ds_map_create()
scr_map_object_to_build_time_content()

unit_to_kawarimi1 = noone; unit_to_kawarimi2 = noone
enemies_wave_length_list = []
array_push(enemies_wave_length_list, 80, 55, 55, 55, 40, 160, 5, 240, 5, 240, 5, 180, 30, 30, 30, 30, 30) //in seconds
enemies_wave_timer = 0
wave_number = 0 // whole number
wave1 = [obj_necromancer]
wave2 = [obj_necromancer]
wave3 = [obj_ghoul, obj_ghoul]
wave4 = [obj_ghoul, obj_ghoul]
wave5 = [obj_ghoul, obj_ghoul]
wave6 = [obj_necromancer, obj_necromancer, obj_necromancer, obj_necromancer, obj_necromancer, obj_necromancer]
wave7 = [obj_necromancer, obj_necromancer, obj_necromancer, obj_lich, obj_necromancer, obj_necromancer, obj_necromancer]
wave8 = [obj_ghoul, obj_ghoul, obj_abomination, obj_abomination, obj_abomination, obj_ghoul, obj_ghoul]
wave9 = [obj_ghoul, obj_ghoul, obj_ghoul, obj_dreadlord, obj_ghoul, obj_ghoul, obj_ghoul]
wave10 = [obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_lord, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend]
wave11 = [obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend]
wave12 = [obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul]
wave13 = [obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul]
wave14 = [obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul]
wave15 = [obj_ghoul, obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul]
wave16 = [obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul]
wave17 = [obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul]
wave1_x = [11]
wave2_x = [11]
wave3_x = [9, 11]
wave4_x = [9, 11]
wave5_x = [9, 11]
wave6_x = [7, 8, 9, 10, 11, 12, 13]
wave7_x = [7, 8, 9, 10, 11, 12, 13]
wave8_x = [7, 8, 9, 10, 11, 12, 13]
wave9_x = [7, 8, 9, 10, 11, 12, 13]
wave10_x = [7, 8, 9, 10, 11, 12, 13]
wave11_x = [7, 8, 9, 10, 11, 12, 13]
wave12_x = [7, 8, 9, 10, 11, 12, 13]
wave13_x = [7, 8, 9, 10, 11, 12, 13]
wave14_x = [7, 8, 9, 10, 11, 12, 13]
wave15_x = [7, 8, 9, 10, 11, 12, 13]
wave16_x = [7, 8, 9, 10, 11, 12, 13]
wave17_x = [7, 8, 9, 10, 11, 12, 13]
wave_x_list_of_lists = [wave1_x, wave2_x, wave3_x, wave4_x, wave5_x, wave6_x, wave7_x, wave8_x, wave9_x, wave10_x, wave11_x, wave12_x, wave13_x, wave14_x, wave15_x, wave16_x, wave17_x]
wave_list = [wave1, wave2, wave3, wave4, wave5, wave6, wave7, wave8, wave9, wave10, wave11, wave12, wave13, wave14, wave15, wave16, wave17]

phase = GAME_PHASES.dialogue
lose_text = ""

save = function() {
	var _array = []
	var s = {}
	if(global.tile_selected) {
		s.tile_selected_tile_x = global.tile_selected.tile_x
		s.tile_selected_tile_y = global.tile_selected.tile_y
	}
	s.recruitableUpgrades = global.recruitableUpgrades
	s.recruitedUpgrades = global.recruitedUpgrades
	s.phase = phase
	s.unit_to_kawarimi1 = unit_to_kawarimi1
	s.unit_to_kawarimi2 = unit_to_kawarimi2
	s.enemies_wave_timer = enemies_wave_timer
	s.wave_number = wave_number
	array_push(_array, s)
	with(obj_player) {
		var _save = save()
		_save.object_ind = object_index
		array_push(_array, _save)
	}
	with(obj_unit) {
		var _save = save()
		_save.object_ind = object_index
		array_push(_array, _save)
	}
	with(obj_building) {
		var _save = save()
		_save.object_ind = object_index
		array_push(_array, _save)
	}
	with(obj_animator) {
		var _save = save()
		_save.object_ind = object_index
		array_push(_array, _save)	
	}
	with(obj_soul) {
		var _save = save()
		_save.object_ind = object_index
		array_push(_array, _save)
	}
	var _json = json_stringify( _array)
	var _file = file_text_open_write("save.txt")
	file_text_write_string(_file, _json)
	file_text_close(_file)
}

load = function() {
	if(file_exists("save.txt")) {
		var _file = file_text_open_read("save.txt")	
		var _json = file_text_read_string(_file)
		var _array = json_parse(_json) 
		instance_destroy(obj_unit)
		instance_destroy(obj_game_board)
		instance_destroy(obj_player)
		instance_destroy(obj_building)
		instance_destroy(obj_animator)
		instance_destroy(obj_soul_parent)
	
		var _targetArray = []
		instance_create_layer(0, 0, "tiles", obj_game_board)
		var s = array_first(_array)
		loopTilesStart
			if(variable_struct_exists(s, "tile_selected_tile_x") and s.tile_selected_tile_x == tile_x and s.tile_selected_tile_y == tile_y) {
				global.tile_selected = self
			}
		loopTilesEnd
		global.recruitableUpgrades = s.recruitableUpgrades
		global.recruitedUpgrades = s.recruitedUpgrades 
		phase = s.phase
		enemies_wave_timer = s.enemies_wave_timer
		wave_number = s.wave_number
		for(var i = 1; i < array_length(_array); i++) {
			var s = _array[i]
			var _y = variable_struct_exists(s, "y") ? s.y : 0
			var _x = variable_struct_exists(s, "x") ? s.x : 0
			var _altitude = variable_struct_exists(s, "altitude") ? altitudeToStr(s.altitude) : "ground"
			if(object_is_ancestor(s.object_ind, obj_unit) or object_is_ancestor(s.object_ind, obj_building)) {
				with(instance_create_layer(_x, _y, _altitude, s.object_ind, {owner : s.owner})) {
					saveData = s
					load(s)
				}
			} else if(s.object_ind == obj_player) {
				with(instance_create_layer(_x, _y, "ground", s.object_ind)) {
					load(s)
				}
			} else if(object_is_ancestor(s.object_ind, obj_animator)) {
				with(instance_create_layer(_x, _y, "ground", s.object_ind)) {
					load(s)
				}
			} else if(object_is_ancestor(s.object_ind, obj_soul_parent)) {
				with(instance_create_layer(_x, _y, "ground", s.object_ind)) {
					load(s)
				}
			}
		}
		with(obj_building) {
		
		}
		with(obj_unit) {
			for(var i = 0; i < array_length(list_of_active_debuff_structs); i++) {
				with(list_of_active_debuff_structs[i]) {
					victim = other.id
					unapply = spellToUnapply(Enum)
				}
			}
			with(obj_unit) {
				loadFromIdd(other.saveData, "target")
			}
			with(obj_building) {
				loadFromIdd(other.saveData, "target")
			}
			with(obj_player) {
				loadFromIdd(other.saveData, "owner")
			}
			if(owner = global.player and object_is_ancestor(object_index, obj_hero)) {
				abilities = createSpell(SPELLS.abilities, "d")
				abilities.lvl = 1;
			}
		}
		
		loopTilesStart
			if(is_back_tile) {
				scr_instance_create_at_tile_with_owner(obj_crystal, self, global.player)
			}
		loopTilesEnd
		
		var s = array_first(_array)
		with(obj_unit) {
			loadFromIdd(s, "unit_to_kawarimi1")
			loadFromIdd(s, "unit_to_kawarimi2")
			scr_apply_upgrades_on_new_unit(self)
		}
		file_text_close(_file)
	}
}

function buttonPressedIconPerform(buttonStr) {
	with(global.tile_selected) {
		with(array_first(selected_units)) {
			if(owner == global.player) {
				with(ds_map_find_value(buttonToSkill, buttonStr)) {
					if(!global.hud.gui_display_abilities or Enum == SPELLS.abilities) {
						if(lvl > 0 or object_is_ancestor(other.object_index, obj_building)) {
							iconPerform()
							exit
						}
					} else {
						if(other.number_of_ability_points > 0 and (buttonStr == "r" and lvl < 1 and owner.lvl >= 6 or buttonStr != "r" and lvl < 3)) {
							global.hud.gui_display_abilities = 0
							level_up()
						}
					}
				}
			}
		}
	}
}