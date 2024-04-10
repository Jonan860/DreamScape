skills = []
buttonToSkill = ds_map_create()
var var_tile_scale = sprite_get_height(spr_hexagon_pink) / max(sprite_height, sprite_width)
image_yscale = var_tile_scale; image_xscale = var_tile_scale
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
lvl = noone
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

sleep_timer = 0

time_until_frost_nova_after_effect_end_sec = 0

scr_draw_decloak_button_with_hover = function()  {
	if(owner == global.player) {
		scr_hover_decloak_info()
		draw_sprite_ext(spr_decloak_button, 0, other.hud_s_button_x, other.hud_s_button_y, other.spell_button_width / sprite_get_width(spr_decloak_button), other.spell_button_height / sprite_get_height(spr_decloak_button), 0, -1, 1)
		draw_sprite_ext(spr_abilities_button, 0, other.hud_abilities_x, other.hud_abilities_y, other.spell_button_width / sprite_get_width(spr_abilities_button), other.spell_button_height / sprite_get_height(spr_abilities_button), 0, -1, 1)
		if(object_is_ancestor(object_index, obj_hero)) {
			if(number_of_ability_points > 0) {
				draw_text_ext_transformed_color(other.hud_abilities_x, other.hud_abilities_y, string(number_of_ability_points), -1, -1, 4, 4, 0, c_green, c_green, c_green, c_green, 1)
			}
		}	
	}
}

scr_update_accuracy = function() {
	var cursed = scr_is_debuffed(SPELLS.curse)
	if(cursed) {
		var curse = createSpell(SPELLS.curse)
		accuracy = base_accuracy * curse.amount
	}
}

slowed = {
	applied : 0,
	duration : 60,
	durationLeft : 0,
	amount : 3/10,
	apply : function() {
		applied = 1
		durationLeft = duration
	}
}

build = function() {
	var most_north_tile = scr_get_most_north_occupiable_neighbour()
	if(most_north_tile != noone) {
		with(obj_tile) {
			if(scr_tile_empty(id) and habitable) {
				var var_unit = scr_instance_create_at_tile_with_owner(object_index, id, global.player)
				scr_apply_upgrades_on_new_unit(var_unit)
				scr_make_room_for_instance_on_tile(most_north_tile, var_unit.altitude)
				with(var_unit) {
					scr_move_to_tile(most_north_tile)
				}
				break;
			}
		}
		if(rally_tile != noone) {
			with(var_unit) {
				phase = "movement"
				destination = other.rally_tile
				scr_update_path_to_destination()
			}
		}
		ds_list_delete(queue_list, 0)
		build_progress = 0
	}
}

freezed = {
	applied : 0,
	duration : 60,
	durationLeft : 0,
	apply : function() {
		applied = 1
		durationLeft = duration
	}
}

cursed = {
	applied : 0,
	duration : 60,
	durationLeft : 0,
	apply : function() {
		applied = 1
		durationLeft = duration
	}
}