
event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 100
max_HP = 100
HP_regeneration_rate = 0.1
damage = 10
base_armor = [2, 1]
armor = base_armor
armor_coverage = [50, 50]
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
altitude = ALTITUDES.ground
experience_to_give = 100

attack_target = method(undefined, scr_attack_target_ghoul)

ai = function() {}