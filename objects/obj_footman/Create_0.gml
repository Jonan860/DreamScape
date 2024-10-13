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
base_damage_reduction = 0.2
damage_reduction = 0.2
accuracy = 1
base_accuracy = accuracy
evasiveness = 0.5
target = noone
altitude = ALTITUDES.ground
experience_to_give = 100
is_defending = 0
defend = createSpell(SPELLS.defend, "q")

skills = [defend]
attack_target = method(undefined, scr_attack_target_footman)

update_damage_reduction = function() {
	damage_reduction = (base_damage_reduction + is_defending) / (1 + is_defending)
}