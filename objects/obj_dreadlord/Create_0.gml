event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 150
max_HP = 150
HP_regeneration_rate = 0.3
damage = 10
damage_reduction = 0.2
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone
number_of_ability_points = 1
altitude = "ground"

max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.45   //per second


carrion_swarm = createSpell(SPELLS.carrion_swarm, "q")
sleep = createSpell(SPELLS.sleep, "w")
vampiric_aura = createSpell(SPELLS.vampiric_aura, "e")

skills = [carrion_swarm, sleep, vampiric_aura]

ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_dreadlord2, spr_dreadlord2, spr_dreadlord2, spr_dreadlord2)
spr_height = sprite_height
spr_width = sprite_width

ai = method(scr_ai_spell_dreadlord, undefined)

attack_target = method(scr_attack_target_dreadlord, undefined)