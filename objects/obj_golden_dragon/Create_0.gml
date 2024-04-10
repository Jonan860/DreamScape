event_inherited()
base_altitude = "ground"  //behövs extra knapp för att avgöra om attackera eller gå till tile om man ska ha air
altitude = "ground"
creator = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 3
HP = 200
max_HP = 200
HP_regeneration_rate = 0.1
damage = 15
damage_reduction = 0.2
accuracy = 0.5
base_accuracy = accuracy
evasiveness = 0.25
target = noone

max_summon_time = 180
summon_time_left = 180

attack_target = method(scr_attack_target_golden_dragon, undefined)
