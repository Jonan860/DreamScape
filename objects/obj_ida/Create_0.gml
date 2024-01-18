event_inherited()
owner = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 2
HP = 100
max_HP = 100
HP_regeneration_rate = 0.2
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
max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.6   //per second

spell_q_struct = global.freeze_struct
spell_w_mana_cost = 30
list_spell_w_cost = ds_list_create()
ds_list_add(list_spell_w_cost, spell_w_mana_cost, 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost)
katon_gokakyu_no_jutsu_damage = 20
list_katon_gokakyu_no_jutsu_damage = ds_list_create()
ds_list_add(list_katon_gokakyu_no_jutsu_damage, katon_gokakyu_no_jutsu_damage, 1.5 * katon_gokakyu_no_jutsu_damage, 1.5 * 1.5 * katon_gokakyu_no_jutsu_damage, 1.5 * 1.5 * katon_gokakyu_no_jutsu_damage, 1.5 * 1.5 * katon_gokakyu_no_jutsu_damage, 1.5 * 1.5 * katon_gokakyu_no_jutsu_damage)
spell_e_mana_cost = 15
list_spell_e_cost = ds_list_create()
ds_list_add(list_spell_e_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost)

spell_r_mana_cost = 80
spell_r_range = 4
total_time_to_earthshatter_impact = 0
time_until_earthshatter_impact = 0
earthshatter_aoe = 2
earthshatter_damage_per_distance = ds_list_create()
ds_list_add(earthshatter_damage_per_distance, 60, 30, 15)
earthshatter_stun_per_distance = ds_list_create()
ds_list_add(earthshatter_stun_per_distance, 10, 5, 2)


spell_w_cooldown_max = room_speed * 20
spell_e_cooldown_max = room_speed * 20
list_spell_e_cooldown_max = ds_list_create()
ds_list_add(list_spell_e_cooldown_max, spell_e_cooldown_max, spell_e_cooldown_max/2, spell_e_cooldown_max/4)
spell_r_cooldown_max = room_speed * 60
spell_q_string = "freeze"
spell_w_string = "katon_gyukaku_no_jutsu"
spell_e_string = "kawarimi_no_jutsu"
spr_q_button = spr_freeze_button
spr_w_button = spr_katon_gokakyu_no_jutsu_button
spr_e_button = spr_kawarimi_button
spr_r_button = spr_earthquake_punch_icon


w_info = "Hurls an fireball towards the north,\n damaging everything in its path\n Cooldown: " + string(spell_w_cooldown_max/room_speed)
+"\n Mana cost: " + string(spell_w_mana_cost) + "\n Damage: " + string(katon_gokakyu_no_jutsu_damage)
w_info_abilities = "Hurls an fireball towards the north,\n damaging everything in its path\n" + "level: 1,2,3 "+"Damage=" + "Damage x " + string(ds_list_find_value(list_katon_gokakyu_no_jutsu_damage, 0)) + ", " + string(ds_list_find_value(list_katon_gokakyu_no_jutsu_damage,1)) + ", " + string(ds_list_find_value(list_katon_gokakyu_no_jutsu_damage, 2))
 + "\n Mana cost: " + string(ds_list_find_value(list_spell_w_cost, 0)) + ", " + string(ds_list_find_value(list_spell_w_cost,1)) + ", " + string(ds_list_find_value(list_spell_w_cost, 2))
e_info = "Swaps the position of two targeted friendly units.\n" + "Mana_cost: " + string(spell_e_mana_cost) + "\n"
 + "Cooldown: " + string(spell_e_cooldown_max/room_speed)
e_info_abilities = "Swaps the position of two targeted friendly units.\n" + "level: 1, 2, 3" + "Cooldown: " + string(ds_list_find_value(list_spell_e_cooldown_max, 0) / room_speed) + ", " + string(ds_list_find_value(list_spell_e_cooldown_max, 1) / room_speed) + ", " + string(ds_list_find_value(list_spell_e_cooldown_max, 2) / room_speed)
r_info = "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
 + "Mana: " + string(spell_r_mana_cost) + "\n"
 + "Cooldown: " + string(spell_r_cooldown_max/room_speed) + "\n"
 +"Damage: " + string(ds_list_find_value(earthshatter_damage_per_distance, 0)) + ", " + string(ds_list_find_value(earthshatter_damage_per_distance, 1)) + ", " + string(ds_list_find_value(earthshatter_damage_per_distance, 2)) + "\n"
 + "Stun duration: " + string(ds_list_find_value(earthshatter_stun_per_distance, 0)) + ", " + string(ds_list_find_value(earthshatter_stun_per_distance, 1)) + ", " + string(ds_list_find_value(earthshatter_stun_per_distance, 2))

r_info_abilities = "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
 + "Mana: " + string(spell_r_mana_cost) + "\n"
 + "Cooldown: " + string(spell_r_cooldown_max/room_speed) + "\n"
 + "Damage: " + string(ds_list_find_value(earthshatter_damage_per_distance, 0)) + ", " + string(ds_list_find_value(earthshatter_damage_per_distance, 1)) + ", " + string(ds_list_find_value(earthshatter_damage_per_distance, 2)) +"\n"
 + "Stun duration: " + string(ds_list_find_value(earthshatter_stun_per_distance, 0)) + ", " + string(ds_list_find_value(earthshatter_stun_per_distance, 1)) + ", " + string(ds_list_find_value(earthshatter_stun_per_distance, 2))

ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_ida_level1, spr_ida_level_2, sprite_ida_level_3, spr_ida_level_4, spr_ida_level_5, spr_ida_level_6, spr_ida_level_7, spr_ida_level_8)
spr_height = sprite_height
spr_width = sprite_width
