event_inherited()
global.nils = id
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 100
max_HP = 100
HP_regeneration_rate = 0.2
damage = 10
base_armor = [3, 1, 0]
armor = base_armor
armor_coverage = [50, 25, 25]
piercing = 0
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone
number_of_ability_points = 1
altitude = ALTITUDES.ground

max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.6 //per second

attack_animator = obj_sword_attack

holy_light = createSpell(SPELLS.holy_light, "q")
spell_shield = createSpell(SPELLS.spell_shield, "w")
ninjago = createSpell(SPELLS.ninjago, "e")
golden_dragon = createSpell(SPELLS.golden_dragon, "r")

skills = [holy_light, spell_shield, ninjago, golden_dragon, revive]

list_level_sprites = [0, spr_nils_level_1, spr_nils_level_2, spr_nils_level_3, spr_nils_level_4, spr_nils_level_5, spr_nils_level_6, spr_nils_level_7, spr_nils_level_8, spr_nils_level_8, spr_nils_level_8, spr_nils_level_8, spr_nils_level_8, spr_nils_level_8]
spr_height = sprite_height
spr_width = sprite_width

attack_target = function() { 
	if(instance_find(obj_ninjago_animator, 0) = noone) {
		scr_attack_target_nils()
	}
}