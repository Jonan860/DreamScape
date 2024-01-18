event_inherited()
owner = noone
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
mana_regen_rate_per_sec = 0.45   //per second
spell_q_mana_cost = 30
list_spell_q_cost = ds_list_create()
ds_list_add(list_spell_q_cost, spell_q_mana_cost, 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost)
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
spell_q_string = "carrion swarm"
spell_w_string = "sleep"
spell_e_string = "vampiric aura"
spr_q_button = spr_carrion_swarm_icon
spr_w_button = spr_sleep_icon
spr_e_button = spr_vampiric_aura_icon
spr_r_button = spr_earthquake_punch_icon
q_info = "Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: "+string(spell_q_cooldown_max/room_speed)
+"\n Mana cost: " + string(spell_q_mana_cost)
w_info = "Makes target enemy fall asleep, Cooldown: "+string(spell_w_cooldown_max/room_speed)
+"\n Mana cost: " + string(spell_w_mana_cost)
e_info = "All friendly melee units gain " + "45" + "percentage of damage caused, back as hit points when they hit a unit."   ///string(ds_list_find_value(list_vampiric_aura_bonus_in_procentage,spell_e_lvl-1)) 
ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_dreadlord2, spr_dreadlord2, spr_dreadlord2, spr_dreadlord2)
spr_height = sprite_height
spr_width = sprite_width

sleep_range = 4
sleep_time_lvl1 = 20
sleep_time_lvl2 = 40
sleep_time_lvl3 = 60
list_sleep_time_per_lvl = ds_list_create()
ds_list_add(list_sleep_time_per_lvl, sleep_time_lvl1, sleep_time_lvl2, sleep_time_lvl3)