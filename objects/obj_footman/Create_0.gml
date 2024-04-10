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
altitude = "ground"
spr_q_button = spr_defend_icon
experience_to_give = 100
is_defending = 0

attack_target = method(scr_attack_target_footman, undefined)

draw_hud_button_and_hover = function() {
	var _alpha = global.player.footman_has_defend_upgrade ? 1 : 0.5
	draw_sprite_ext(spr_defend_icon, 0, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, _alpha)
}

update_damage_reduction = function() {
		damage_reduction = (base_damage_reduction + is_defending) / (1 + is_defending)
}