event_inherited()
owner = noone
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
spell_q_lvl = 0
spell_w_lvl = 0
spell_e_lvl = 0
spell_r_lvl = 0
number_of_ability_points = 1
altitude = "ground"

list_vampiric_aura_bonus_in_procentage = ds_list_create()
ds_list_add(list_vampiric_aura_bonus_in_procentage, 15, 30, 45)
max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.45  //per second
spell_q_mana_cost = 40
list_spell_q_cost = ds_list_create()
ds_list_add(list_spell_q_cost, spell_q_mana_cost, 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost,1 .2 * 1.2 * spell_q_mana_cost)
spell_w_mana_cost = 30
list_spell_w_cost = ds_list_create()
ds_list_add(list_spell_w_cost, list_spell_w_cost, 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost)
spell_e_mana_cost = 0
list_spell_e_cost = ds_list_create()
ds_list_add(list_spell_e_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost)
spell_q_cooldown_max = room_speed * 20
spell_w_cooldown_max = room_speed * 20
spell_e_cooldown_max = 1
list_spell_e_cooldown_max = ds_list_create()
ds_list_add(list_spell_e_cooldown_max, spell_e_cooldown_max, spell_e_cooldown_max/2, spell_e_cooldown_max/4)
spell_r_cooldown_max = room_speed * 60
spell_q_string = "frost nova"
spell_w_string = "frost armor"
spell_e_string = "dark ritual"
spr_q_button = spr_frost_nova_icon
spr_w_button = spr_frost_armor_icon
spr_e_button = spr_dark_ritual_icon
spr_r_button = spr_death_and_decay_icon



ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_lich_big_head, spr_lich_big_head, spr_lich_big_head, spr_lich_big_head)
spr_height = sprite_height
spr_width = sprite_width

frost_nova_range = 5
time_until_frost_nova_sec = 0
frost_nova_total_time_sec = 4.5

total_time_frost_nova_after_effect_end_sec = 1.5
frost_nova_damage_lvl1 = 30
frost_nova_damage_lvl2 = 45
frost_nova_damage_lvl3 = 60
list_of_frost_nova_damage_per_lvl = ds_list_create()
ds_list_add(list_of_frost_nova_damage_per_lvl, frost_nova_damage_lvl1, frost_nova_damage_lvl2, frost_nova_damage_lvl3)

dark_ritual_range = 5
dark_ritual_conversion_lvl1 = 0.33
dark_ritual_conversion_lvl2 = 0.66
dark_ritual_conversion_lv3=1
list_dark_ritual_conversion_per_lvl = ds_list_create()
ds_list_add(list_dark_ritual_conversion_per_lvl, dark_ritual_conversion_lvl1, dark_ritual_conversion_lvl2, dark_ritual_conversion_lv3)
dark_ritual_duration_sec = 1

ai = method(scr_ai_spell_lich, undefined)

attack_target = method(scr_attack_target_lich, undefined)