
if(owner == global.player) {
	for(var i = 1; i <= array_length(path) - 1; i++) {
		var var_tile = path[i]
		var var_arrow_direction = list_path_arrow_directions[i]
		var varXscale = sprite_get_width(spr_hexagon_pink) / 3 / sprite_get_width(spr_red_arrow)
		var varYscale =  sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_red_arrow)
		draw_sprite_ext(spr_red_arrow, 0, var_tile._x, var_tile._y, varXscale, varYscale, var_arrow_direction, c_white, 0.5)
	}
}

//ai = function() {}

if(!eaten and !tied_up and phase != UNIT_PHASES.gosing) {
	if(scr_is_debuffed(SPELLS.slow)) {
		var varXscale2 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_slow)
		var varYscale2 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_slow)
		draw_sprite_ext(spr_slow, image_index, x, y, varXscale2, varYscale2, 0, -1, 1)
	}
	
	if(object_is_ancestor(object_index, obj_hero)) {
		for(var i = 0; i < array_length(inventory); i++) {
			var varXscale2 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_slow)
		var varYscale2 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_slow)
		draw_sprite_ext(spr_slow, image_index, x, y, varXscale2, varYscale2, 0, -1, 1)
		}
	}
	
	
	image_alpha = altitude == ALTITUDES.invisible ? 0.5 : 1
	if(!scr_is_debuffed(SPELLS.polymorph)){
		draw_self()
	} else {
		var varXscale2 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_sheep)
		var varYscale2 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_sheep)
		draw_sprite_ext(spr_sheep, 0, x, y, varXscale2, varYscale2, 0, -1, 1)
	}
	
	if(scr_is_debuffed(SPELLS.unholy_frenzy)) {
		var varXscale2 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_unholy_frenzy)/2
		var varYscale2 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_unholy_frenzy)/2
		var frame = (current_time div 100) mod sprite_get_number(spr_unholy_frenzy);
		draw_sprite_ext(spr_unholy_frenzy, frame, x, y - sprite_get_height(spr_hexagon_pink) / 4, varXscale2, varYscale2, 0, -1, 1)
		
	}
	if(scr_is_debuffed(SPELLS.cripple)) {
		var varXscale2 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_cripple_no_middle)
		var varYscale2 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(spr_cripple_no_middle)
		var frame = (current_time div 100) mod sprite_get_number(spr_cripple_no_middle);
		draw_sprite_ext(spr_cripple_no_middle, frame, x, y, varXscale2, varYscale2, 0, -1, 0.9)
	}
	
	draw_healthbar(x - HP_bar_width/2, y + hp_bar_translate_y, x + HP_bar_width/2, y + hp_bar_translate_y + HP_bar_height, 100 * HP/max_HP, c_black, c_red, c_green, 0, 1, 0)
	draw_healthbar(x - sprite_width/4, y + sprite_height * 3/8 - sprite_height * 1/4 * 1/8, x + sprite_width/4, y + sprite_height * 3/8 - 2 * sprite_height * 1/4 * 1/8, 100 * action_bar/max_action_bar, c_black, c_red, c_green, 0, 1, 0)
	if(missing_time > 0) {
		draw_text_transformed_color(x, y + sprite_height/4, "Miss", 2, 2, 0, c_red, c_red, c_red, c_red, 1)
	}
	if(scr_is_debuffed(SPELLS.freeze)) {
		draw_sprite(spr_ice_block, -1, x, y)
	} else {
		if(stunned) {
			draw_sprite_ext(spr_stun_vortex, 8 * time_until_stunned_clear % 8, x, y - 2/3 * sprite_height/2, 1/2, 1/2, 0, c_white, 0.5)
		}
	}
	if(scr_is_debuffed(SPELLS.sleep)) {
		draw_sprite_ext(spr_sleep, 8 * find_active_debuff(SPELLS.sleep).duration % 8, x + sprite_get_width(spr_sleep) / 2, y - 2/3 * sprite_height/2, 1, 1, 0, c_white, 1)
	}
	if(scr_is_debuffed(SPELLS.curse)) {
		draw_sprite_ext(spr_curse_animation, 0, x, y, sprite_width / (3 * sprite_get_width(spr_curse_animation)), sprite_height / (3 * sprite_get_height(spr_curse_animation)), 0, c_white, 1)
	}
	if(scr_is_debuffed(SPELLS.silence)) {
		draw_sprite_ext(spr_silenced, 0, x, y, sprite_width / (3 * sprite_get_width(spr_silenced)), sprite_height / (3 * sprite_get_height(spr_silenced)), 0, c_white, 1)
	}
}
else if(tied_up) {
		var varXscale2 = sprite_get_width(spr_hexagon_pink)/sprite_get_width(sprite_index)
		var varYscale2 = sprite_get_height(spr_hexagon_pink)/sprite_get_height(sprite_index)
		draw_sprite_ext(sprite_index, 0, x, y, varXscale2, varYscale2, 0, -1, 1)
}