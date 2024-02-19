function scr_right_pressed_enemy(var_ground_unit,clicked_tile,var_selected_unit){
	if(scr_is_enemies(var_selected_unit,var_ground_unit)) {
		if(var_selected_unit == global.ida) {
			with(var_ground_unit) {
				var already_freezed = scr_is_debuffed(global.freeze_struct)
			}
			if(cursor_sprite == spr_freeze_cursor and !already_freezed) {
				if(global.ida.spell_q.lvl > 0) {
					var cooldown = global.freeze_struct.cooldown
					var mana_cost = global.freeze_struct.mana_cost_list[|global.ida.spell_q.lvl - 1]
					if(global.ida.spell_q.cooldown_current == 0 and scr_get_distance(global.tile_selected, clicked_tile) == 1 and global.ida.mana >= mana_cost) {
						global.ida.mana -= mana_cost
						global.ida.spell_q.cooldown_current = cooldown
						scr_freeze_unit(global.ida, clicked_tile.grounds_list[|0])
					}
				}
			} else {
				with(var_selected_unit) {
					if(phase != "earthshatter jump") {
							phase = "hunt"
							target = var_ground_unit
							destination = var_ground_unit.tile
							scr_update_path_to_destination()
					}
				}
			}
		}  else {
			with(var_selected_unit) {
				phase = "hunt"
				target = var_ground_unit
				destination = var_ground_unit.tile
				scr_update_path_to_destination()
			}
		}
	}
}