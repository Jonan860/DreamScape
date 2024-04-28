
if(owner == global.player) {
	for(var i = 1; i <= ds_list_size(path) - 1; i += 1) {
		var var_tile = path[|i]
		var var_arrow_direction = list_path_arrow_directions[|i]
		var varXscale = sprite_get_width(spr_hexagon_pink) / 3 / sprite_get_width(spr_red_arrow)
		var varYscale =  sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_red_arrow)
		draw_sprite_ext(spr_red_arrow, 0, var_tile.x, var_tile.y, varXscale,varYscale, var_arrow_direction, c_white, 0.5)
	}
}

//ai = function() {}

if(!eaten) {
	if(scr_is_debuffed(SPELLS.slow)) {
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
	if(scr_is_debuffed(SPELLS.freeze)) {
		draw_sprite(spr_ice_block, -1, x, y)
	} else if(stunned) {
		draw_sprite_ext(spr_stun_vortex, 8 * time_until_stunned_clear % 8, x, y - 2/3 * sprite_height/2, 1/2, 1/2, 0, c_white, 0.5)
	}
	if(scr_is_debuffed(SPELLS.curse)) {
		draw_sprite_ext(spr_curse_animation, 0, x, y, sprite_width / (3 * sprite_get_width(spr_curse_animation)), sprite_height / (3 * sprite_get_height(spr_curse_animation)), 0, c_white, 1)
	}
}