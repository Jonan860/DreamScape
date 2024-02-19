function scr_death() {
	if(object_get_parent(object_index) = obj_summon and summon_time_left != noone) {
		var time_has_runned_out = summon_time_left <= 0
	} else {
		var time_has_runned_out = 0
	}
	
	if(HP <= 0 and phase != "dead" or time_has_runned_out or (phase == "sacrificed" and time_until_dark_ritual_sacrifice_sec <= 0)) {
		scr_give_experience()
		with(obj_attack_projectile) {
			if(owner == other.id) {
				owner=noone
			}
		}
		if(global.game.unit_to_kawarimi1 == id or global.game.unit_to_kawarimi2 == id) {
			global.game.unit_to_kawarimi1 = noone
			global.game.unit_to_kawarimi2 = noone
		}
		scr_make_all_unit_detarget(self.id)
		with(obj_crypt_fiend_projectile) {
			if(other.id == owner.id) {
				instance_destroy()
			} else if(target == other.id) {
				target = owner
			}
		}
		with(obj_locust) {
			if(owner == other.id) {
				instance_destroy()
			}
			if(target == other.id) {
				target = noone
				phase = "returning"
			}
		}
		with(obj_ninjago) {
			if(creator == other.id) {
				instance_destroy()
			}
		}
		var altitude_list = ds_map_find_value(tile.occupants, altitude)
		if(!eaten) {
			scr_ds_list_remove_value(altitude_list,id)
		}
		if(object_index == obj_hungry_hungry_lizard) {
			with(object_in_stomach) {
				eaten = 0
				tile = other.tile
				x = other.x; y = other.y
				scr_ds_list_remove_value(altitude_list, other.id)
				var altitude_list2 = ds_map_find_value(other.tile.occupants, altitude)
				ds_list_add(altitude_list2, id)
			}
		}	
		if(global.tile_selected != noone) {
			if(ds_list_find_index(global.tile_selected.selected_units,id) >= 0) {
				scr_ds_list_remove_value(global.tile_selected.selected_units, id)
				if(ds_list_empty(global.tile_selected.selected_units)) {
					global.tile_selected = noone
				}
			}
		}
		if(object_get_parent(object_index) != obj_summon and phase != "sacrificed") {
			if(object_get_parent(object_index) != obj_hero and object_index != obj_lille_skutt or object_is_ancestor(object_index, obj_hero) and owner = global.enemy) {
				var soul = instance_create_depth(x, y, depth, obj_soul)
				soul.object = object_index
				soul.tile = tile
				soul.image_xscale = soul.tile.sprite_width / soul.sprite_width
				soul.image_yscale = soul.tile.sprite_height / soul.sprite_height
			} else {
				phase = "dead"
				HP = 1
				scr_ds_list_remove_value(altitude_list, id)
				var soul = instance_create_depth(x, y, depth, obj_soul_hero)
				soul.instance = id
				soul.tile = tile
				target = noone
				tile = noone
				x = -1000; y = -1000
				soul.image_xscale = soul.tile.sprite_width / soul.sprite_width
				soul.image_yscale = soul.tile.sprite_height / soul.sprite_height
			}
		}
		scr_disblend_list(path)
		if(object_get_parent(object_index) != obj_hero and object_index != obj_lille_skutt or owner == global.enemy or owner == global.creep_lord) {
			if(object_index == obj_golden_dragon) {
				with(obj_light_beam) {
					if(creator == other.id) {
						instance_destroy()
					}
				}
			}
			instance_destroy()
		}
	}
}