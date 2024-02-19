function scr_perform_e() {
	if(global.tile_selected != noone) {
	var var_selected_unit = global.tile_selected.selected_units[|0]
		if(!global.hud.gui_display_abilities) {
			if(global.tile_selected != noone) {
				if(global.tile_selected != noone) {
					if(var_selected_unit == global.ida and global.ida.spell_e.lvl > 0) {
						var set_cursor = cursor_sprite != spr_kawarimi_cursor ? cr_none : cr_default
						cursor_sprite = cursor_sprite != spr_kawarimi_cursor ? spr_kawarimi_cursor : -1
					}

					if(spell_e.canPerform()) {
						spell_e.perform()
					}
					
				}
			}
		} else if(object_is_ancestor(var_selected_unit.object_index, obj_hero)) {
			with(var_selected_unit) {
				if(number_of_ability_points > 0) {
					if(2 * (spell_e_lvl) + 1 <= lvl) {
						scr_level_up_e_spell()
					}
				}
			}
		}
	}
}
