event_inherited()
global.jonathan = id
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 150
max_HP = 150
HP_regeneration_rate = 1

damage = 10
base_armor = [5, 3, 0]
armor = base_armor
armor_coverage = [50, 25, 25]
piercing = 3
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone
number_of_ability_points = 1
altitude = ALTITUDES.ground
max_mana = 300
mana = 300
mana_regen_rate_per_sec = 3   //per second

attack_animator = obj_sword_attack

death_coil = createSpell(SPELLS.death_coil, "q")
death_pact = createSpell(SPELLS.death_pact, "w")
unholy_aura = createSpell(SPELLS.unholy_aura, "e")
ninja_gos = createSpell(SPELLS.ninja_gos, "r")

skills = [death_coil, death_pact, unholy_aura, ninja_gos]
attack_target = function() { 
		scr_attack_target_nils()
}
list_level_sprites = [0, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan]
spr_height = sprite_height
spr_width = sprite_width

ai = function() {
	if( HP/ max_HP + mana / max_mana < 3/2 and ninja_gos.canPerform()) {
		var target_list = scr_find_enemies_within_range(ninja_gos.range)
		var target_hero_list = []
		for(var i = 0; i < array_length(target_list); i++) {
			if(object_is_ancestor(target_list[i].object_index, obj_hero)) {
				array_push(target_hero_list, target_list[i])
			}
		}
		var target_hero = target_hero_list[irandom(array_length(target_hero_list) - 1)];
		ninja_gos.rightPerform(target_hero)
		mana -= ninja_gos.getManaCost()
		ninja_gos.cooldown_current = ninja_gos.getCooldown()
	}
	else if(HP < max_HP / 3 and death_pact.canPerform()) {
		var varTarget = scr_find_spell_target(death_pact)
		if(varTarget != noone) {
			death_pact.rightPerform(varTarget.tile)
			mana -= death_pact.getManaCost()
			death_pact.cooldown_current = death_pact.getCooldown()
		}
	} else if(death_coil.canPerform()) {
		var varTarget = scr_find_spell_target(death_coil)
		if(varTarget != noone) {
			death_coil.rightPerform(varTarget)
			mana -= death_coil.getManaCost()
			death_coil.cooldown_current = death_coil.getCooldown()
		}
	}
}