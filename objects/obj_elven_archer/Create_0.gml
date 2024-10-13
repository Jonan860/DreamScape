event_inherited()
image_xscale *= 1.5
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
base_range = 2
range = 2


HP = 150
max_HP = 150
HP_regeneration_rate = 0.1
damage = 5.8
damage_reduction = 0
accuracy = 1.7
base_accuracy = accuracy
evasiveness = 0.3
target = noone
altitude = ALTITUDES.ground
experience_to_give = 100

function scr_attack_target_elven_archer() {
	magic_ball = instance_create_depth(x, y, -4, obj_arrow_animator)
	magic_ball.owner = id
	magic_ball.target_tile = target.tile
	magic_ball.altitude = target.altitude
	magic_ball.image_angle = point_direction(x, y, target.x, target.y)
	magic_ball.direction = point_direction(x, y, target.x, target.y)
	magic_ball.speed = 4
}

attack_target = method(undefined, scr_attack_target_elven_archer)
