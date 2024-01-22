function scr_perform_r() {
	if(global.tile_selected != noone) {
		var var_selected = global.tile_selected.selected_units[|0]
		if(!global.hud.gui_display_abilities) {
			if(var_selected == global.nils and var_selected.spell_r_lvl > 0 and global.nils.mana > global.nils.spell_r_mana_cost)  {
				with(global.nils) {
					spell_r_cooldown_current = spell_r_cooldown_max
					mana -= spell_r_mana_cost
					var most_north_tile = scr_get_most_north_occupiable_neighbour()
				}
				if(most_north_tile != noone) {
					scr_make_room_for_instance_on_tile(most_north_tile, "ground") ///ska ändras tilll air
					scr_instance_create_at_tile_with_owner(obj_golden_dragon, most_north_tile, global.player)
				}
			}
	
			if(var_selected == global.ida and var_selected.spell_r_lvl > 0 and global.ida.mana > global.ida.spell_r_mana_cost) {
				window_set_cursor(cr_none)
				cursor_sprite=spr_earthquake_cursor
			}
		} else if(object_is_ancestor(var_selected.object_index, obj_hero)) {
			with(var_selected) {
				if(number_of_ability_points>0) {
					if(6 * spell_r_lvl + 6 <= lvl) {
						global.hud.gui_display_abilities = 0
						spell_r_lvl += 1
						number_of_ability_points -= 1
					}
				}
			}
		}
	}
}
