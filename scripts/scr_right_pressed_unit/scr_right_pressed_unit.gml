function scr_right_pressed_unit(var_selected_unit) {
	if(var_selected_unit.phase != UNIT_PHASES.sleep) {
		with(global.selectedSpell) {
			if(lvl > 0 and (owner.mana == noone or owner.mana > getManaCost()) and cooldown_current == 0 and (range == noone or scr_get_distance(var_selected_unit.tile, global.clicked_tile) <= range) and shouldRightPerform()) {
				if(owner.mana != noone) {
					owner.mana -= getManaCost();
				}
				cooldown_current = getCooldown();
				action_bar = 0
				rightPerform()
				exit
			}
		}
		if(var_selected_unit.phase != UNIT_PHASES.reviving and var_selected_unit.phase != UNIT_PHASES.dead) {
			if(scr_occupiable(global.clicked_tile, var_selected_unit.altitude) and window_get_cursor() == cr_default) {
				scr_right_pressed_occupiable_tile(var_selected_unit)
			} else {
				var var_ground_unit_list = global.clicked_tile.occupants[? ALTITUDES.ground]
				if(!array_equals(var_ground_unit_list, [])) {
					var var_ground_unit = array_first(var_ground_unit_list)
					if(array_get_index(global.tile_selected.selected_units, global.lille_skutt) >= 0 and object_is_ancestor(var_ground_unit.object_index, obj_building)) {
						scr_right_pressed_building_repair(var_ground_unit)
					}
					if(scr_is_enemies(var_selected_unit, var_ground_unit)) {
						scr_right_pressed_enemy(var_ground_unit, var_selected_unit)
					}
				}
			}
		}	
	}
}