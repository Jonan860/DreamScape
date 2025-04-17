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
damage = 25
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
earthshatter = createSpell(SPELLS.earthshatter, "r")

skills = [death_coil, death_pact, unholy_aura, earthshatter]
attack_target = function() { 
		scr_attack_target_nils()
}
list_level_sprites = [0, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan, spr_jonathan]
spr_height = sprite_height
spr_width = sprite_width

ai = function() {
	if(mana >= death_coil.getManaCost() and death_coil.cooldown_current == 0) {
		var varTarget = scr_find_death_coil_target()
		if(varTarget != noone) {
			death_coil.rightPerform(varTarget)
			mana -= death_coil.getManaCost()
			death_coil.cooldown_current = death_coil.getCooldown()
		}
	}
}