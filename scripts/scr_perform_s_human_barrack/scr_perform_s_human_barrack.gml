function scr_perform_s_human_barrack() {
	if(global.tile_selected != noone) {
		var var_selected = global.tile_selected.selected_units[|0]
			with(var_selected) {
				if(ds_list_find_index(var_selected.queue_list, obj_improved_bows_upgrade) < 0 and !global.player.elven_archers_has_improved_bows) {
					scr_recruit_unit(obj_improved_bows_upgrade)
				}
			}
		}
	}
