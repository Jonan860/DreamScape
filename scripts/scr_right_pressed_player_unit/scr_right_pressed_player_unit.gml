function scr_right_pressed_player_unit(var_ground_unit,var_selected_unit,clicked_tile){
	if(!scr_is_enemies(var_selected_unit, var_ground_unit) and var_ground_unit.owner == global.player) {
		if(var_selected_unit == global.ida) {
			if(cursor_sprite == spr_kawarimi_cursor and global.ida.mana >= global.ida.spell_e.mana_cost and global.ida.spell_e.lvl > 0) {
				if(unit_to_kawarimi1 == noone and global.ida.mana >= global.ida.spell_e_mana_cost) {
					var var_unit_to_kawarimi1 = clicked_tile.grounds_list[|0]
					if(object_is_ancestor(var_unit_to_kawarimi1.object_index, obj_unit)) {
						unit_to_kawarimi1 = var_unit_to_kawarimi1
					}
				} else if(global.ida.mana >= global.ida.spell_e_mana_cost and global.ida.spell_e_cooldown_current == 0) {	
				var var_unit_to_kawarimi2 = clicked_tile.grounds_list[|0]
				if(object_is_ancestor(var_unit_to_kawarimi2.object_index, obj_unit)) {
					unit_to_kawarimi2 = var_unit_to_kawarimi2
					if(unit_to_kawarimi1 != unit_to_kawarimi2) {
						with(global.ida) {
							spell_e.cooldown_current = spell_e.cooldown_max
							mana -= spell_e.mana_cost
							action_bar = 0
						}
						scr_swap_tile(unit_to_kawarimi1, unit_to_kawarimi2)
					}
					unit_to_kawarimi1 = noone
					unit_to_kawarimi2 = noone
					}
				}
			}
		}
	
		if(var_selected_unit == global.nils) {
			if(cursor_sprite == spr_holy_light_cursor) {
				if(scr_get_distance(global.tile_selected, clicked_tile) <= global.nils.spell_q_range and global.nils.mana >= global.nils.spell_q_mana_cost and global.nils.spell_q_cooldown_current == 0) {
					global.nils.mana -= global.nils.spell_q.mana_cost
					global.nils.spell_q.cooldown_current = global.nils.spell_q.cooldown
					scr_holy_light_unit(global.nils, clicked_tile.grounds_list[|0])
				}
			}
		}
		if(cursor_sprite == spr_invisibility_cursor) {
			if(var_selected_unit.spell_w.cooldown_current == 0 and scr_get_distance(var_selected_unit, clicked_tile) <= var_selected_unit.spell_w.range and var_selected_unit.mana >= var_selected_unit.spell_w.mana_cost) {
				scr_cast_invisible_on_unit(var_ground_unit)
				with(var_selected_unit) {
					mana -= spell_w.mana_cost
					spell_w.cooldown_current = spell_w.cooldown
				}
			}
		}
		if(var_selected_unit.object_index == obj_priest) {
			if(cursor_sprite == spr_heal_cursor and var_selected_unit.mana > var_selected_unit.spell_q_mana_cost) {
				with(var_selected_unit) {
					phase = "healing"
					target = var_ground_unit
				}
			}
		}
	}
}