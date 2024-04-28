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
altitude = "ground"
base_altitude = "ground"

experience_to_give = noone
enemy_ai_spell_counter = 1
player_ai_spell_counter = 1
player_ai_idle_counter = 1
missing_time = 0
heal_animation_time_left_in_sec = 0

list_of_active_debuff_structs = ds_list_create()
ds_list_priority_debuff = ds_list_create()
eaten = 0
stunned = 0
time_until_stunned_clear = 0
invisible = 0

HP_bar_height = sprite_get_height(spr_hexagon_pink)/16
HP_bar_width = sprite_get_width(spr_hexagon_pink) * 2/3
hp_bar_translate_y = sprite_get_height(spr_hexagon_pink)/2 * 3/4

has_waited_for_blocker_to_move = 0

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



save = function() { 
	var s = {}
	s.phase = phase
	s.HP = HP
	s.target = target
	s.destination = destination
	s.eaten = eaten
	s.has_waited_for_blocker_to_move = has_waited_for_blocker_to_move
	s.path = path
	s.lvl = lvl
	s.mana = mana
	s.altitude = altitude
	s.x = x
	s.y = y
	if(variable_instance_exists(id, "skills")) {
		s.skills = skills
	}
	if(variable_instance_exists(id, "summon_time_left")) {
		s.summon_time_left = summon_time_left
	}
	if(variable_instance_exists(id, "experience")) {
		s.experience = experience
		s.lvl = lvl
	}
	if(variable_instance_exists(id, "object_in_stomach")) {
		s.object_in_stomach = object_in_stomach
	}
	if(variable_instance_exists(id, "list_of_territory_tiles")) {
		s.list_of_territory_tiles = list_of_territory_tiles
	}
	if(variable_instance_exists(id, "build_progress")) {
		s.build_progress = build_progress
	}
	if(variable_instance_exists(id, "queue_list")) {
		s.queue_list = queue_list
	}
	if(variable_instance_exists(id, "is_building")) {
		s.is_building = is_building
	}
	s.action_bar = action_bar
}

load = function(s) {
	phase = s.phase
	HP = s.HP
	target = s.target
	destination = s.destination
	eaten = s.eaten
	has_waited_for_blocker_to_move = s.has_waited_for_blocker_to_move
	path = s.path
	lvl = s.lvl
	mana = s.mana
	altitude = s.altitude
	x = s.x
	y = s.y
	if(variable_instance_exists(id, "skills")) {
		skills = s.skills
	}
	if(variable_instance_exists(id, "summon_time_left")) {
		summon_time_left = s.summon_time_left
	}
	if(variable_instance_exists(id, "experience")) {
		experience = s.experience
		lvl = s.lvl
	}
	if(variable_instance_exists(id, "object_in_stomach")) {
		object_in_stomach = s.object_in_stomach
	}
	if(variable_instance_exists(id, "list_of_territory_tiles")) {
		list_of_territory_tiles = s.list_of_territory_tiles
	}
	if(variable_instance_exists(id, "build_progress")) {
		build_progress = s.build_progress
	}
	if(variable_instance_exists(id, "queue_list")) {
		queue_list = s.queue_list
	}
	if(variable_instance_exists(id, "is_building")) {
		is_building = s.is_building
	}
	action_bar = s.action_bar
}