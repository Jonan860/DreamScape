skills = []
buttonToSkill = ds_map_create()
decloak = createSpell(SPELLS.decloak, "s")
decloak.lvl = 1

setAltitude = function(_altitude) {
	scr_make_room_for_instance_on_tile(tile, _altitude)
	tile.occupants[? altitude] = array_filter(tile.occupants[? altitude], function(value, index) {return value != id})
	//array_remove_value(tile.occupants[? altitude], id)
	altitude = _altitude
	array_push(tile.occupants[? altitude], id)
}

var var_tile_scale = sprite_get_height(spr_hexagon_pink) / max(sprite_height, sprite_width)
image_yscale = var_tile_scale; image_xscale = var_tile_scale
path = []
list_path_arrow_directions = []
tile = coordToTile()
destination = noone
phase = UNIT_PHASES.idle
target = noone
optimal_path = []
tiles_within_range = []
element = ELEMENTS.normal

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


list_of_active_debuff_structs = []
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
		with(list_of_active_debuff_structs[i]) {
			duration -= min(total_duration * dispelAmount / spellHealth, duration)
			dispelAmount -= min(dispelAmount, duration / total_duration * spellHealth)
		}
	}
}

scr_update_accuracy = function() {
	var cursed = scr_is_debuffed(SPELLS.curse)
	if(cursed) {
		accuracy = base_accuracy * find_active_debuff(SPELLS.curse).amount
	}
}


save = function() { 
	var s = {}
	s.sprite_index = sprite_index
	s.image_xscale = image_xscale
	s.image_yscale = image_yscale
	s._direction = direction
	s._depth = depth
	s._speed = speed
	s.phase = phase
	s.owner = owner
	s.movement_cost = movement_cost
	s.attack_cost = attack_cost
	s.damage = damage
	s.damage_reduction = damage_reduction
	s.range = range
	s.accuracy = accuracy
	s.base_accuracy = base_accuracy
	s.evasiveness = evasiveness
	if(variable_instance_exists(id, "mana_regen_rate_per_sec")) {
		s.mana_regen_rate_per_sec = mana_regen_rate_per_sec
	}
	s.max_action_bar = max_action_bar
	s.HP = HP
	s.max_HP = max_HP
	s.idd = id
	s.target = target
	if(destination != noone) {
		s.destinationX = destination.tile_x
		s.destinationY = destination.tile_y
	}
	s.eaten = eaten
	s.has_waited_for_blocker_to_move = has_waited_for_blocker_to_move
	s.path = saveTileList(path)
	s.optimal_path = saveTileList(optimal_path)
	s.tiles_within_range = saveTileList(tiles_within_range)
	s.list_path_arrow_directions = list_path_arrow_directions
	s.list_of_active_debuff_structs = list_of_active_debuff_structs
	s.lvl = lvl
	s.mana = mana
	s.max_mana = max_mana
	s.selected = 0
	with(global.tile_selected) {
		for(var i = 0; i < array_length(selected_units); i++) {
			if(selected_units[i].id == other.id)
			s.selected = 1
		}
	}
	s.altitude = altitude
	if(tile != noone) { // could be soul
		s.tileX = tile.tile_x; s.tileY = tile.tile_y
	} else {
		show_debug_message("heuj")
	}
	s.x = x; s.y = y
	if(variable_instance_exists(id, "skills")) {
		s.skillLevels = []
		for(var i = 0; i < array_length(skills); i++) {
			array_push(s.skillLevels, skills[i].lvl)
		}
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
	if(variable_instance_exists(id, "number_of_ability_points")) {
		s.number_of_ability_points = number_of_ability_points
	}
	
	s.action_bar = action_bar
	return s
}


load = function(s) {
	sprite_index = s.sprite_index
	image_xscale = s.image_xscale
	image_yscale = s.image_yscale
	depth = s._depth
	speed = s._speed
	direction = s._direction
	phase = s.phase
	movement_cost = s.movement_cost
	attack_cost = s.attack_cost
	damage = s.damage
	damage_reduction = s.damage_reduction
	range = s.range
	accuracy = s.accuracy
	base_accuracy = s.base_accuracy
	evasiveness = s.evasiveness
	if(variable_instance_exists(id, "mana_regen_rate_per_sec")) {
		mana_regen_rate_per_sec = s.mana_regen_rate_per_sec
	}
	max_action_bar = s.max_action_bar
	HP = s.HP
	max_HP = s.max_HP
	owner = s.owner
	if(variable_struct_exists(s, "destinationX")) {
		destination = getTile(s.destinationX, s.destinationY)
	} else {
		destination = noone
	}
	eaten = s.eaten
	has_waited_for_blocker_to_move = s.has_waited_for_blocker_to_move
	loadTileList(path, s.path)
	loadTileList(optimal_path, s.optimal_path)
	loadTileList(tiles_within_range, s.tiles_within_range)
	list_path_arrow_directions = s.list_path_arrow_directions
	list_of_active_debuff_structs = s.list_of_active_debuff_structs
	
	idd = s.idd
	target = s.target
	lvl = s.lvl
	mana = s.mana
	max_mana = s.max_mana
	altitude = s.altitude
	x = s.x; y = s.y
	if(variable_struct_exists(s, "tileX")) {
		scr_move_to_tile(getTile(s.tileX, s.tileY))
	}
	if(s.selected) {
		with(global.tile_selected) {
			array_push(selected_units, other.id)
		}
	}
	if(variable_instance_exists(id, "skills")) {
		for(var i = 0; i < array_length(skills); i++) {
			skills[i].lvl = s.skillLevels[i]
		}
	}
	if(variable_instance_exists(id, "summon_time_left")) {
		summon_time_left = s.summon_time_left
	}
	if(variable_instance_exists(id, "number_of_ability_points")) {
		number_of_ability_points = s.number_of_ability_points
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
	
	action_bar = s.action_bar
}