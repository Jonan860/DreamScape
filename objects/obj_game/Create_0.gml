global.game = id
global.camera_width = camera_get_view_width(view_camera[0])
global.camera_height = camera_get_view_height(view_camera[0])
optimal_path = ds_list_create()
max_window_width = window_get_width()
max_window_height=window_get_height()
min_window_width = 2048/2
min_window_height = 1179/2
learn_button_width = 128
learn_button_height = 42
//learn_button_pressed=0
learn_spell_q_width = 128
learn_spell_q_height = 42
learn_spell_q_pressed = 0
learn_spell_w_width = 256 + 128
learn_spell_w_height = 42
learn_spell_w_pressed = 0
learn_spell_e_width = 256
learn_spell_e_height = 42
learn_spell_e_pressed = 0
global.enemy_ai_think_time_in_sec = 5
global.player_ai_think_time_in_sec = 0.1
global.player_idle_ai_think_time_in_sec = 0.3
global.selected_altitude = noone  /// can be all, "air", "ground", "invisible"
global.invisibility_upgrade_mana_bonus = 25

global.invisibility_upgrade_mana_regen_bonus = 0.6/4
list_jukebox = ds_list_create()
ds_list_add(list_jukebox, sound_canon, sound_darth_nader, sound_head_of_nasa, sound_guitarmass, sound_infected_mushroom_kazabubu, sound_infected_mushroom_slowly, sound_overwerk, sound_sharxpowa, sound_soulji_murder, sound_spitfire)

global.map_object_to_costs = ds_map_create() /// look row below for content!!
scr_map_object_to_cost_build()
global.map_objects_to_build_time = ds_map_create()
scr_map_object_to_build_time_content()

global.dark_ritual_animation_total_time = 0.5

tile_to_use = noone
unit_to_kawarimi1 = noone
unit_to_kawarimi2 = noone
first_tile = noone /// for swap
second_tile = noone /// for swap
enemies_wave_length_list = ds_list_create()
ds_list_add(enemies_wave_length_list, 80, 55, 55, 55, 40, 160, 5, 240, 5, 240, 5, 180, 30, 30, 30, 30, 30) //in seconds
enemies_wave_timer = 0
wave_number = 0 // whole number
wave1 = ds_list_create()
ds_list_add(wave1, obj_necromancer)
wave1_x = ds_list_create()
ds_list_add(wave1_x, 11)
wave2 = ds_list_create()
ds_list_add(wave2, obj_necromancer)
wave2_x = ds_list_create()
ds_list_add(wave2_x, 11)
wave3 = ds_list_create()
ds_list_add(wave3, obj_ghoul,obj_ghoul)
wave4 = ds_list_create()
ds_list_add(wave4, obj_ghoul,obj_ghoul)
wave5 = ds_list_create()
ds_list_add(wave5, obj_ghoul,obj_ghoul)
wave6 = ds_list_create()
ds_list_add(wave6, obj_necromancer, obj_necromancer, obj_necromancer, obj_necromancer, obj_necromancer, obj_necromancer)
wave7 = ds_list_create()
ds_list_add(wave7, obj_necromancer, obj_necromancer, obj_necromancer, obj_lich, obj_necromancer, obj_necromancer, obj_necromancer)
wave8 = ds_list_create()
ds_list_add(wave8, obj_ghoul, obj_ghoul, obj_abomination, obj_abomination, obj_abomination, obj_ghoul, obj_ghoul)
wave9 = ds_list_create()
ds_list_add(wave9, obj_ghoul, obj_ghoul, obj_ghoul, obj_dreadlord, obj_ghoul, obj_ghoul, obj_ghoul)
wave10 = ds_list_create()
ds_list_add(wave10, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_lord, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend)
wave11 = ds_list_create()
ds_list_add(wave11, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend, obj_crypt_fiend)
wave12 = ds_list_create()
ds_list_add(wave12, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul)
wave13 = ds_list_create()
ds_list_add(wave13, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul)
wave14 = ds_list_create()
ds_list_add(wave14, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul)
wave15 = ds_list_create()
ds_list_add(wave15, obj_ghoul, obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul)
wave16 = ds_list_create()
ds_list_add(wave16, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul)
wave17 = ds_list_create()
ds_list_add(wave17, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul, obj_ghoul)
wave3_x = ds_list_create()
ds_list_add(wave3_x, 9, 11)
wave4_x = ds_list_create()
ds_list_add(wave4_x, 9, 11)
wave5_x = ds_list_create()
ds_list_add(wave5_x, 9, 11)
wave6_x = ds_list_create()
ds_list_add(wave6_x, 7, 8, 9, 10, 11, 12, 13)
wave7_x = ds_list_create()
ds_list_add(wave7_x, 7, 8, 9, 10, 11, 12, 13)
wave8_x = ds_list_create()
ds_list_add(wave8_x, 7, 8, 9, 10, 11, 12, 13)
wave9_x = ds_list_create()
ds_list_add(wave9_x, 7, 8, 9, 10, 11, 12, 13)
wave10_x = ds_list_create()
ds_list_add(wave10_x, 7, 8, 9, 10, 11, 12, 13)
wave11_x = ds_list_create()
ds_list_add(wave11_x, 7, 8, 9, 10, 11, 12, 13)
wave12_x = ds_list_create()
ds_list_add(wave12_x, 7, 8, 9, 10, 11, 12, 13)
wave13_x=ds_list_create()
ds_list_add(wave13_x,7, 8, 9, 10, 11, 12, 13)
wave14_x = ds_list_create()
ds_list_add(wave14_x, 7, 8, 9, 10, 11, 12, 13)
wave15_x = ds_list_create()
ds_list_add(wave15_x, 7, 8, 9, 10, 11, 12, 13)
wave16_x = ds_list_create()
ds_list_add(wave16_x, 7, 8, 9, 10, 11, 12, 13)
wave17_x = ds_list_create()
ds_list_add(wave17_x, 7, 8, 9, 10, 11, 12, 13)
wave_x_list_of_lists = ds_list_create()
ds_list_add(wave_x_list_of_lists, wave1_x, wave2_x, wave3_x, wave4_x, wave5_x, wave6_x, wave7_x, wave8_x, wave9_x, wave10_x, wave11_x, wave12_x, wave13_x, wave14_x, wave15_x, wave16_x, wave17_x)
wave_list = ds_list_create()
ds_list_add(wave_list, wave1, wave2, wave3, wave4, wave5, wave6, wave7, wave8, wave9, wave10, wave11, wave12, wave13, wave14, wave15, wave16, wave17)

phase = "dialogue"
lose_text = ""

scr_create_all_buff_structs()