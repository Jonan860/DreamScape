skills = []
buttonToSkill = ds_map_create()
decloak = createSpell(SPELLS.decloak, "s")
decloak.lvl = 1

setAltitude = function(_altitude) {
	scr_make_room_for_instance_on_tile(tile, _altitude)
	scr_ds_list_remove_value(tile.occupants[? altitude], id)
	altitude = _altitude
	ds_list_add(tile.occupants[? altitude], id)
}

var var_tile_scale = sprite_get_height(spr_hexagon_pink) / max(sprite_height, sprite_width)
image_yscale = var_tile_scale; image_xscale = var_tile_scale
path = ds_list_create()
list_path_arrow_directions = ds_list_create()
tile = mouseToTile()
destination = noone
phase = UNIT_PHASES.idle
target = noone
optimal_path = ds_list_create()
tiles_within_range = ds_list_create()
element = "normal"

HP_regeneration_rate = 0
max_mana = noone
mana = noone
lvl = noone
altitude = ALTITUDES.ground
base_altitude = ALTITUDES.ground

experience_to_give = noone
enemy_ai_spell_counter = 1
player_ai_spell_counter = 1
player_ai_idle_counter = 1
missing_time = 0
heal_animation_time_left_in_sec = 0

list_of_active_debuff_structs = ds_list_create()
eaten = 0
stunned = 0
time_until_stunned_clear = 0
invisible = 0

HP_bar_height = sprite_get_height(spr_hexagon_pink)/16
HP_bar_width = sprite_get_width(spr_hexagon_pink) * 2/3
hp_bar_translate_y = sprite_get_height(spr_hexagon_pink)/2 * 3/4

has_waited_for_blocker_to_move = 0

reduceDebuffDuration = function(dispelAmount) {
	scr_sort_debuff_list_after_dispellity()
	for(var i = 0; i < list_of_active_debuff_structs; i++) {
		if(dispelAmount == 0) {
			break;
		}
		with(list_of_active_debuff_structs[| i]) {
			duration -= min(total_duration * dispelAmount / spellHealth, duration)
			dispelAmount -= min(dispelAmount, duration / total_duration * spellHealth)
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
	s.x = x; s.y = y
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
	x = s.x; y = s.y
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