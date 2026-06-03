/// @description Insert description here
// You can write your code in this editor
global.game=self
global.camera_width=camera_get_view_width(view_camera[0])
global.camera_height=camera_get_view_height(view_camera[0])
optimal_path=ds_list_create()
max_window_width=window_get_width()
max_window_height=window_get_height()
min_window_width=2048/2
min_window_height=1179/2
learn_button_width=128
learn_button_height=42
//learn_button_pressed=0
learn_spell_q_width=128
learn_spell_q_height=42
learn_spell_q_pressed=0
learn_spell_w_width=256+128
learn_spell_w_height=42
learn_spell_w_pressed=0
learn_spell_e_width=256
learn_spell_e_height=42
learn_spell_e_pressed=0
global.ai_think_time_in_sec=5
list_jukebox=ds_list_create()
ds_list_add(list_jukebox,sound_canon,sound_darth_nader,sound_head_of_nasa,sound_guitarmass,sound_infected_mushroom_kazabubu,sound_infected_mushroom_slowly,sound_overwerk,sound_sharxpowa,sound_soulji_murder,sound_spitfire)

global.map_object_to_costs=ds_map_create() /// look row below for content!!
scr_map_object_to_cost_build()
global.map_objects_to_build_time=ds_map_create()
scr_map_object_to_build_time_content()

tile_to_use=noone
unit_to_kawarimi1=noone
unit_to_kawarimi2=noone
first_tile=noone /// for swap
second_tile=noone /// for swap
enemies_wave_length_list=ds_list_create()
ds_list_add(enemies_wave_length_list,20,40,40,40,30,120,5,5) //in seconds
enemies_wave_timer=0
wave_number=0 // whole number
wave1=ds_list_create()
ds_list_add(wave1,obj_necromancer)
wave1_x=ds_list_create()
ds_list_add(wave1_x,11)
wave2=ds_list_create()
ds_list_add(wave2,obj_necromancer)
wave2_x=ds_list_create()
ds_list_add(wave2_x,11)
wave3=ds_list_create()
ds_list_add(wave3,obj_ghoul,obj_ghoul)
wave4=ds_list_create()
ds_list_add(wave4,obj_ghoul,obj_ghoul)
wave5=ds_list_create()
ds_list_add(wave5,obj_ghoul,obj_ghoul)
wave6=ds_list_create()
ds_list_add(wave6,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul)
wave7=ds_list_create()
ds_list_add(wave7,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul,obj_ghoul)
wave8=ds_list_create()
ds_list_add(wave8,obj_ghoul)
wave3_x=ds_list_create()
ds_list_add(wave3_x,9,11)
wave4_x=ds_list_create()
ds_list_add(wave4_x,9,11)
wave5_x=ds_list_create()
ds_list_add(wave5_x,9,11)
wave6_x=ds_list_create()
ds_list_add(wave6_x,7,8,9,10,11,12,13)
wave7_x=ds_list_create()
ds_list_add(wave7_x,7,8,9,10,11,12,13)
wave8_x=ds_list_create()
ds_list_add(wave8_x,7,8,9,10,11,12,13)
wave_x_list_of_lists=ds_list_create()
ds_list_add(wave_x_list_of_lists,wave1_x,wave2_x,wave3_x,wave4_x,wave5_x,wave6_x,wave7_x,wave8_x)
wave_list=ds_list_create()
ds_list_add(wave_list,wave1,wave2,wave3,wave4,wave5,wave6,wave7,wave8)
global.spell_q_duration=1/2

phase="dialogue"
lose_text=""

