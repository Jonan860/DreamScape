event_inherited()
movement_cost = 3 * game_get_speed(gamespeed_fps) 
attack_cost = 1.5 * game_get_speed(gamespeed_fps)
max_action_bar = 3 * game_get_speed(gamespeed_fps)
action_bar = 0
range = 3
HP = 350
max_HP = 350
HP_regeneration_rate = 0.4
damage = 30
base_armor = [3, 5]
armor = base_armor
armor_coverage = [50, 50]
piercing = 1
accuracy = 0.5
base_accuracy = accuracy
evasiveness = 0.25
altitude = ALTITUDES.air
experience_to_give = 600

attack_animator = obj_frost_beam

ai = function() {}
attack_target = method(undefined, scr_attack_target_beam)