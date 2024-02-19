function scr_right_pressed_player_unit(var_ground_unit,var_selected_unit,clicked_tile){
	if(!scr_is_enemies(var_selected_unit, var_ground_unit) and var_ground_unit.owner == global.player) {
		
	
		if(var_selected_unit == global.nils) {
			if(cursor_sprite == spr_holy_light_cursor) {
				if(scr_get_distance(global.tile_selected, clicked_tile) <= global.nils.spell_q.range and global.nils.mana >= global.nils.spell_q.mana_cost and global.nils.spell_q.cooldown_current == 0) {
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
			if(cursor_sprite == spr_heal_cursor and var_selected_unit.mana > var_selected_unit.spell_q.mana_cost) {
				with(var_selected_unit) {
					phase = "healing"
					target = var_ground_unit
				}
			}
		}
	}
}