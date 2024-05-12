event_inherited()
movement_cost = 3 * game_get_speed(gamespeed_fps) 
attack_cost = 1.5 * game_get_speed(gamespeed_fps)
max_action_bar = 3 * game_get_speed(gamespeed_fps)
action_bar = 0
range = 1
HP = 200
max_HP = 200
HP_regeneration_rate = 0.2
damage = 20
damage_reduction = 0.2
accuracy = 0.5
base_accuracy = accuracy
evasiveness = 0.25
altitude = ALTITUDES.ground
experience_to_give = 300
ai = function() {}
attack_target = method(undefined, scr_attack_target_abomination)