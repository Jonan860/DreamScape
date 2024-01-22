event_inherited()
owner = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 100
max_HP = 100
HP_regeneration_rate = 0.1
damage = 10
base_damage_reduction = 0.2
damage_reduction = 0.2
accuracy = 1
base_accuracy = accuracy
evasiveness = 0.5
target = noone
altitude = "ground"
spr_q_button = spr_defend_icon
experience_to_give = 100
footman_is_defending = 0

draw_hud_button_with_info = method(scr_draw_hud_button_and_hover_footman, undefined)

attack_target = method(scr_attack_target_footman, undefined)