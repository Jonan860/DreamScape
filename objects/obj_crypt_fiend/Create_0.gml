event_inherited()
image_xscale *= 1.5
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
base_range = 2
range = 2
scr_update_range()
HP = 210
max_HP = 210
HP_regeneration_rate = 0.15
damage = 8.6
damage_reduction = 0
accuracy = 1.7
base_accuracy = accuracy
evasiveness = 0.3
target = noone
altitude = "ground"
experience_to_give = 150

attack_target = method(scr_attack_target_crypt_fiend, undefined)