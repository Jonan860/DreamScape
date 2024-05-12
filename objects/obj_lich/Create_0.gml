event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 4
HP = 150 //150
max_HP = 150 //150
HP_regeneration_rate = 0.3
damage = 10
damage_reduction = 0.2
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone

number_of_ability_points = 1
altitude = ALTITUDES.ground

max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.45  //per second

frost_nova = createSpell(SPELLS.frost_nova, "q")
frost_armor = createSpell(SPELLS.frost_armor, "w")
dark_ritual = createSpell(SPELLS.dark_ritual, "e")
skills = [frost_nova, frost_armor, dark_ritual]

ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_lich_big_head, spr_lich_big_head, spr_lich_big_head, spr_lich_big_head)
spr_height = sprite_height
spr_width = sprite_width

ai = function () {
	if(mana >= frost_nova.getManaCost() and frost_nova.cooldown_current == 0 and phase != UNIT_PHASES.frostNova) {
		var frost_nova_target_tile_within_range = scr_find_frost_nova_target_within_range()
		if(frost_nova_target_tile_within_range != noone) {
			frost_nova.rightPerform(frost_nova_target_tile_within_range)
			mana -= frost_nova.getManaCost()
			frost_nova.cooldown_current = frost_nova.getCooldown()
		}
		exit;
	}


	if(frost_nova.getManaCost() + dark_ritual.getManaCost() > mana and mana >= dark_ritual.getManaCost() and dark_ritual.cooldown_current == 0 and dark_ritual.lvl > 0 and phase != "frost nova") {
		var var_dark_sacrifice = scr_find_dark_ritual_sacrifice()
		if(var_dark_sacrifice != noone) {
			dark_ritual.rightPerform(var_dark_sacrifice)
		}
	}
}

attack_target = function() {attack_target_magic_projectile(c_aqua)}