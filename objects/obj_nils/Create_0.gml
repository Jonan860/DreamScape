event_inherited()
owner = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 100
max_HP = 100
HP_regeneration_rate = 0.2
damage = 10
damage_reduction = 0.5
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone
number_of_ability_points = 1
altitude = "ground"

max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.6 //per second

spell_q = createSpell(SPELLS.holy_light)
spell_w = createSpell(SPELLS.spell_shield)
spell_e = createSpell(SPELLS.ninjago)
spell_r = createSpell(SPELLS.golden_dragon)
spell_s = createSpell(SPELLS.revive)

skills = [spell_q, spell_w, spell_e, spell_r, spell_s]

ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_nils_level_1, spr_nils_level_2, spr_nils_level_3, spr_nils_level_4, spr_nils_level_5, spr_nils_level_6, spr_nils_level_7, spr_nils_level_8)
spr_height = sprite_height
spr_width = sprite_width

attack_target = function() { 
			if(instance_find(obj_ninjago, 0) = noone) {
				scr_attack_target_nils()
			}
}