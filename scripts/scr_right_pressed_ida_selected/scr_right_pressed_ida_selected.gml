function scr_right_pressed_ida_selected(var_selected_unit,clicked_tile) {
	if(var_selected_unit.object_index == obj_ida) {
		if(cursor_sprite = spr_earthquake_cursor) {
			if(global.ida.spell_r_cooldown_current == 0 and scr_get_distance(global.tile_selected, clicked_tile) <= global.ida.spell_r_range and global.ida.mana >= global.ida.spell_r_mana_cost and global.ida.spell_r_lvl > 0) {
				with(global.ida) {
					mana -= spell_r_mana_cost
					spell_r_cooldown_current = spell_r_cooldown_max
					scr_start_earthshatter_tile(clicked_tile)
					exit;
				}
			}
		}
	}
}