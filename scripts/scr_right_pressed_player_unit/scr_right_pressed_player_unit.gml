function scr_right_pressed_player_unit(var_ground_unit,var_selected_unit,clicked_tile){
	if(var_selected_unit == global.nils) {
		if(cursor_sprite == spr_holy_light_cursor) {
			if(scr_get_distance(global.tile_selected, clicked_tile) <= global.nils.holy_light.range and global.nils.mana >= global.nils.holy_light.mana_cost and global.nils.holy_light.cooldown_current == 0) {
				global.nils.holy_light.perform()
			}
		}
	}
	if(cursor_sprite == spr_invisibility_cursor) {
		if(var_selected_unit.invisibility.cooldown_current == 0 and scr_get_distance(var_selected_unit, clicked_tile) <= var_selected_unit.invisibility.range and var_selected_unit.mana >= var_selected_unit.invisibility.mana_cost) {
			scr_cast_invisible_on_unit(var_ground_unit)
			with(var_selected_unit) {
				mana -= invisibility.mana_cost
				invisibility.cooldown_current = invisibility.cooldown
			}
		}
	}
	if(var_selected_unit.object_index == obj_priest) {
		if(cursor_sprite == spr_heal_cursor and var_selected_unit.mana > var_selected_unit.heal.mana_cost) {
			with(var_selected_unit) {
				phase = "healing"
				target = var_ground_unit
			}
		}
	}
}
