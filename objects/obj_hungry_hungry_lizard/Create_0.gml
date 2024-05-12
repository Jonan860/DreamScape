event_inherited()
movement_cost = 3 * room_speed + 1
attack_cost = 1.5 * room_speed * 2
max_action_bar = 3 * room_speed + 1
action_bar = 0
range = 1
HP = 200 //200
max_HP = 200 ///200
damage = 20
damage_reduction = 0.5
accuracy = 1
base_accuracy = 1
evasiveness = 0.2
base_evasivness = evasiveness
altitude = ALTITUDES.ground
list_of_territory_tiles = ds_list_create()
start_tile = noone
object_in_stomach = noone
digestion_rate = 1/2 //per second
experience_to_give = 300

attack_target = method(undefined, scr_attack_target_hungry_hungry_lizard)



