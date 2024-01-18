
var var_tile_scale = sprite_get_height(spr_hexagon_pink) / max(sprite_height, sprite_width)
image_yscale = var_tile_scale
image_xscale = var_tile_scale
path = ds_list_create()
list_path_arrow_directions = ds_list_create()
tile = instance_position(x, y, obj_tile)
destination = noone
phase = "idle"
target = noone
optimal_path = ds_list_create()
tiles_within_range = ds_list_create()
element = "normal"

HP_regeneration_rate = 0
max_mana = noone
mana = noone
holy_lighted = 0
altitude = "ground"
base_altitude = "ground"

experience_to_give = noone
enemy_ai_spell_counter = 1
player_ai_spell_counter = 1
player_ai_idle_counter = 1
missing_time = 0
slow_duration_in_seconds = 0
heal_animation_time_left_in_sec = 0

list_of_active_debuff_structs = ds_list_create()
ds_list_priority_debuff = ds_list_create()

on_fire = 0
eaten = 0
stunned = 0
time_until_stunned_clear = 0
invisible = 0


HP_bar_height = sprite_get_height(spr_hexagon_pink)/16
HP_bar_width = sprite_get_width(spr_hexagon_pink) * 2/3
hp_bar_translate_y = sprite_get_height(spr_hexagon_pink)/2 * 3/4

has_waited_for_blocker_to_move = 0

vampiric_aura_percentage = 0

time_until_dark_ritual_sacrifice_sec = 0

sleep_timer = 0

time_until_frost_nova_after_effect_end_sec = 0