event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 80
max_HP = 80
HP_regeneration_rate = 1
damage = 10
base_armor = [2, 1, 0]
armor = base_armor
piercing = 1
accuracy = 1
base_accuracy = accuracy
evasiveness = 0.7
target = noone
altitude = ALTITUDES.ground
experience_to_give = 100
is_defending = 0

attack_animator = obj_sword_attack

attack_target = method(undefined, scr_attack_target_meelee)



