
skills = []

if(owner == global.player) {
	for(var i = 1; i <= ds_list_size(path) - 1; i += 1) {
		var var_tile = path[|i]
		var var_arrow_direction = list_path_arrow_directions[|i]
		var varXscale = sprite_get_width(spr_hexagon_pink) / 3 / sprite_get_width(spr_red_arrow)
		var varYscale =  sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_red_arrow)
		draw_sprite_ext(spr_red_arrow, 0, var_tile.x, var_tile.y, varXscale,varYscale, var_arrow_direction, c_white, 0.5)
	}
}

slowed = {
	applied : 0,
	duration : 60,
	durationLeft : 0,
	apply : function() {
		applied = 1
		durationLeft = duration
	}
}

freezed = {
	applied : 0,
	duration : 60,
	durationLeft : 0,
	apply : function() {
		applied = 1
		durationLeft = duration
	}
}

cursed = {
	applied : 0,
	duration : 60,
	durationLeft : 0,
	apply : function() {
		applied = 1
		durationLeft = duration
	}
}

if(!eaten) {
	if(slowed.applied) {
		var varXscale2 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_slow)
		var varYscale2 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_slow)
		draw_sprite_ext(spr_slow, 0, x, y, varXscale2, varYscale2, 0, -1, 1)
	}

	image_alpha = 1
		
	draw_self()
	draw_healthbar(x - HP_bar_width/2, y + hp_bar_translate_y, x + HP_bar_width/2, y + hp_bar_translate_y + HP_bar_height, 100 * HP/max_HP, c_black, c_red, c_green, 0, 1, 0)
	draw_healthbar(x - sprite_width/4, y + sprite_height * 3/8 - sprite_height * 1/4 * 1/8, x + sprite_width/4, y + sprite_height * 3/8 - 2 * sprite_height * 1/4 * 1/8, 100 * action_bar/max_action_bar, c_black, c_red, c_green, 0, 1, 0)

	if(missing_time > 0) {
		draw_text_transformed_color(x, y + sprite_height/4, "Miss", 2, 2, 0, c_red, c_red, c_red, c_red, 1)
	}
}

if(freezed.applied) {
	draw_sprite(spr_ice_block, -1, x, y)
} else if(stunned) {
	draw_sprite_ext(spr_stun_vortex, 8 * time_until_stunned_clear % 8, x, y - 2/3 * sprite_height/2, 1/2, 1/2, 0, c_white, 0.5)
}
if(cursed.applied) {
	draw_sprite_ext(spr_curse_animation, 0, x, y, sprite_width / (3 * sprite_get_width(spr_curse_animation)), sprite_height / (3 * sprite_get_height(spr_curse_animation)), 0, c_white, 1)
}

build = function() {
	var most_north_tile = scr_get_most_north_occupiable_neighbour()
	if(most_north_tile != noone) {
		with(obj_tile) {
			if(scr_tile_empty(id) and habitable) {
				var var_unit = scr_instance_create_at_tile_with_owner(object_index, id, global.player)
				scr_apply_upgrades_on_new_unit(var_unit)
				scr_make_room_for_instance_on_tile(most_north_tile, var_unit.altitude)
				with(var_unit) {
					scr_move_to_tile(most_north_tile)
				}
				break;
			}
		}
		if(rally_tile != noone) {
			with(var_unit) {
				phase = "movement"
				destination = other.rally_tile
				scr_update_path_to_destination()
			}
		}
		ds_list_delete(queue_list, 0)
		build_progress = 0
	}
}

hud_draw_gui = method(undefined, scr_hud_draw_gui_unit)