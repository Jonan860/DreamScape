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
base_damage_reduction = 0.2
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
mana_regen_rate_per_sec = 0.45  //per second
spell_q_mana_cost = 30
list_spell_q_cost = ds_list_create()
ds_list_add(list_spell_q_cost, spell_q_mana_cost, 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost)
spell_w_mana_cost = 30
list_spell_w_cost = ds_list_create()
ds_list_add(list_spell_w_cost, list_spell_w_cost, 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost, 1.2 * 1.2 * spell_w_mana_cost)
spell_e_mana_cost = 25
list_spell_e_cost = ds_list_create()
ds_list_add(list_spell_e_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost, spell_e_mana_cost)
spell_q_cooldown_max = room_speed * 20
spell_w_cooldown_max = room_speed*20
spell_e_cooldown_max = 1
spell_r_cooldown_max = room_speed*180
spell_r_cooldown_current = 0
spell_e_cooldown_current = 0
list_spell_e_cooldown_max = ds_list_create()
ds_list_add(list_spell_e_cooldown_max, spell_e_cooldown_max, spell_e_cooldown_max/2, spell_e_cooldown_max/4)
spell_r_cooldown_max = room_speed * 60
spell_q_string = "impale"
spell_w_string = "spiked carapace"
spell_e_string = "carrion beetles"
spr_q_button = spr_impale_icon
spr_w_button = spr_spiked_carapace_icon
spr_e_button = spr_carrion_beetles_icon
spr_r_button = spr_locust_swarm_icon
spell_r_mana_cost = 60
q_info = "Slams the ground with the Crypt Lord's massive claws, \n shooting spiked tendrils out in a straight line, dealing damage and hurling enemy ground units into the air in their wake..\n Cooldown: "+string(spell_q_cooldown_max/room_speed)
+"\n Mana cost: " + string(spell_q_mana_cost)
w_info = "The Crypt Lord forms barbed layers of chitinous armor \n that increases its defense and returns damage to enemy melee attackers., Cooldown: "+string(spell_w_cooldown_max/room_speed)
+"\n Mana cost: " + string(spell_w_mana_cost)
e_info = "The Crypt Lord progenerates 1 Carrion Beetle from a target soul to attack the Crypt Lord's enemies. \n Beetles are permanent but only 5 can be controlled at a time."+ " Cooldown: "+string(spell_e_cooldown_max/room_speed)+"\n Mana cost: "+string(spell_e_mana_cost)

r_info = "Creates a swarm of angry locusts that bite and tear at nearby enemy units. \n As they chew the enemy flesh, they convert it into a substance that restores hit points to the Crypt Lord when they return. "+"Cooldown: "+string(spell_r_cooldown_max/room_speed)+"\n Mana cost: "+string(spell_r_mana_cost)
ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord)
spr_height = sprite_height
spr_width = sprite_width
raise_range = 4
list_of_damage_reduction_from_spiked_carapacelvl = ds_list_create()
var carapace_reduction_lvl1 = 18/100
var carapace_reduction_lvl2 = 30/100
var carapace_reduction_lvl3 = 42/100
ds_list_add(list_of_damage_reduction_from_spiked_carapacelvl, carapace_reduction_lvl1, carapace_reduction_lvl2, carapace_reduction_lvl3)

list_of_returned_damage_from_spiked_carapacelvl = ds_list_create()
var carapace_return_damagelvl1 = 15/100
var carapace_return_damagelvl2 = 25/100
var carapace_return_damagelvl3 = 35/100
ds_list_add(list_of_returned_damage_from_spiked_carapacelvl, carapace_return_damagelvl1, carapace_return_damagelvl2, carapace_return_damagelvl3)
locust_activated = 0
active_locusts = 0
locust_spawn_interval_sec = 0.4
time_until_next_locust = locust_spawn_interval_sec
max_active_locusts = 7
locust_total_time_sec = 30
locust_time_left = locust_total_time_sec