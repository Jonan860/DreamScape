event_inherited()
owner = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 2
HP = 70
max_HP = 70
HP_regeneration_rate = 0.1
damage = 3
damage_reduction = 0
accuracy = 1
evasiveness = 0.5
altitude = "ground"
mana = 50
max_mana = 100
mana_regen_rate_per_sec = 0.6
experience_to_give = 100
slow = createSpell(SPELLS.slow, "q")
invisibility = createSpell(SPELLS.invisibility, "w")
skills = [slow, invisibility]
slow_icon_animation_index = 0
slow_icon_animation_speed = 8 //frames per sec


draw_hud_buttons_with_info = method( undefined, scr_dra_hud_buttons_with_hover_inf_sorc)

attack_target = function() {attack_target_magic_projectile()}


right_pressed_enemy = function() {
	if(cursor_sprite == spr_slow_cursor) {
		if(var_selected_unit.slow.cooldown_current == 0 and scr_get_distance(var_selected_unit, clicked_tile) <= var_selected_unit.slow.range and var_selected_unit.mana >= var_selected_unit.slow.mana_cost) {
			with(var_selected_unit)	{
				scr_slow_unit(var_ground_unit)
				mana -= slow.mana_cost
				slow.cooldown_current = slow.cooldown
			}
		}
	} else {
		with(var_selected_unit) {
			phase = "hunt"
			target = var_ground_unit
			destination = var_ground_unit.tile
			scr_update_path_to_destination()
		}
	}
}