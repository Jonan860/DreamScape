function scr_death() {
	if(object_get_parent(object_index) = obj_summon and summon_time_left != noone) {
		var time_has_runned_out = summon_time_left <= 0
	} else {
		var time_has_runned_out = 0
	}
	
	if(HP <= 0 and phase != UNIT_PHASES.dead or time_has_runned_out or (phase == UNIT_PHASES.sacrificed and time_until_dark_ritual_sacrifice_sec <= 0)) {
		scr_give_experience()
		with(obj_projectile_animator) {
			if(owner == other.id) {
				owner = noone
			}
		}
		with(obj_heal_animator) {
			if(target == other.id) {
				instance_destroy()
			}
		}
		if(global.game.unit_to_kawarimi1 == id or global.game.unit_to_kawarimi2 == id) {
			global.game.unit_to_kawarimi1 = noone
			global.game.unit_to_kawarimi2 = noone
		}
		with(obj_unit) {
			unit_detarget(other.id)
		}
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
				phase = UNIT_PHASES.returning
			}
		}
		with(obj_locust_animator) {
			if(owner.owner == other.id) {
				instance_destroy()
			}
		}
		with(obj_ninjago_animator) {
			if(owner.owner == other.id) {
				instance_destroy()
			}
		}
		with(obj_vampiric_aura_animator) {
			if(owner.owner == other.id) {
				instance_destroy()
			}
		}
		with(obj_frost_nova_animator) {
			if(owner.owner == other.id) {
				instance_destroy()
			}
		}
		var _altitude_list = tile.occupants[? altitude] 
		if(!eaten) {
			var _altitude_list = array_filter(_altitude_list, function(value, index) {return value != self.id})
			//array_remove_value(altitude_list, id)
		}
		if(object_index == obj_hungry_hungry_lizard) {
			with(object_in_stomach) {
				eaten = 0
				tile = other.tile
				x = other.x; y = other.y
				//array_remove_value(altitude_list, other.id)
				_altitude_list = array_filter(_altitude_list, function(value, index) {return value != other.id})
				array_push(_altitude_list, id)
			}
		}	
		if(global.tile_selected != noone) {
			if(array_get_index(global.tile_selected.selected_units, id) >= 0) {
				global.tile_selected.selected_units = array_filter(global.tile_selected.selected_units, function(value, index) {return value != self.id})
				//array_remove_value(, id)
				if(array_equals(global.tile_selected.selected_units, [])) {
					global.tile_selected = noone
				}
			}
		}
		tile.occupants[? altitude] = _altitude_list
		if(object_get_parent(object_index) != obj_summon and phase != UNIT_PHASES.sacrificed) {
			if(object_get_parent(object_index) != obj_hero and object_index != obj_lille_skutt or object_is_ancestor(object_index, obj_hero) and owner = global.enemy) {
				var soul = instance_create_depth(x, y, depth, obj_soul)
				soul.object = object_index
				soul.tile = tile
				soul.image_xscale = sprite_get_width(spr_hexagon_pink) / soul.sprite_width
				soul.image_yscale = sprite_get_height(spr_hexagon_pink) / soul.sprite_height
			} else {
				phase = UNIT_PHASES.dead
				HP = 1
				//array_remove_value(altitude_list, id)
				_altitude_list = array_filter(_altitude_list, function(value, index) {return value != id})
				var soul = instance_create_depth(x, y, depth, obj_soul_hero)
				soul.instance = id
				soul.tile = tile
				target = noone
				tile = noone
				x = -1000; y = -1000
				soul.image_xscale = sprite_get_width(spr_hexagon_pink) / soul.sprite_width
				soul.image_yscale = sprite_get_height(spr_hexagon_pink) / soul.sprite_height
			}
		}
		scr_disblend_list(path)
		
		if(object_get_parent(object_index) != obj_hero and object_index != obj_lille_skutt or owner == global.enemy or owner == global.creep_lord) {
			if(object_index == obj_golden_dragon) {
				with(obj_light_beam) {
					if(owner == other.id) {
						instance_destroy()
					}
				}
			}
			instance_destroy()
		}
	}
}
