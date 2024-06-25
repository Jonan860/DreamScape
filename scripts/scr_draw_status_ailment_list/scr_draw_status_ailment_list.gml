
function scr_draw_status_ailment_list() {
	var i = 0
	var var_draw_position = 0
	var var_draw_x_translate = 0
	var var_hud = global.hud
	for(var i = 0; i < array_length(list_of_active_debuff_structs); i += 1) {
		var struct_debuff = list_of_active_debuff_structs[i]
		draw_sprite_ext(struct_debuff.icon, 0, var_hud.hud_buff_x + var_draw_x_translate * var_hud.hud_buff_width, var_hud.hud_buff_y, var_hud.hud_buff_width / sprite_get_width(struct_debuff.icon), var_hud.hud_buff_height / sprite_get_height(struct_debuff.icon), 0, c_white, 1)
		var_draw_position += 1
		var_draw_x_translate = (-1 + 2 * (var_draw_position % 2)) * (var_draw_position + var_draw_position % 2)/2    /// order: 6420135
	}
	/*
	var var_draw_position=0
	var var_hud=global.hud
	var var_draw_x_translate=0
	if(freezed)
	{
	draw_sprite_ext(spr_freeze_button,0,var_hud.hud_buff_x+var_draw_x_translate*var_hud.hud_buff_width,var_hud.hud_buff_y,var_hud.hud_buff_width/sprite_get_width(spr_freeze_button),var_hud.hud_buff_height/sprite_get_height(spr_freeze_button),0,c_white,1)
	var_draw_position+=1
	var_draw_x_translate=(-1+2*(var_draw_position % 2))*(var_draw_position+var_draw_position % 2)/2    /// order: 6420135

	}

if(stunned)
	{
	draw_sprite_ext(spr_stun_vortex,0,var_hud.hud_buff_x+var_draw_x_translate*var_hud.hud_buff_width,var_hud.hud_buff_y,var_hud.hud_buff_width/sprite_get_width(spr_stun_vortex),var_hud.hud_buff_height/sprite_get_height(spr_stun_vortex),0,c_white,1)
	var_draw_position+=1
	var_draw_x_translate=(-1+2*(var_draw_position % 2))*(var_draw_position+var_draw_position % 2)/2    /// order: 6420135

	}

	if(slowed)
	{
	draw_sprite_ext(spr_slow_icon,0,var_hud.hud_buff_x+var_draw_x_translate*var_hud.hud_buff_width,var_hud.hud_buff_y,var_hud.hud_buff_width/sprite_get_width(spr_slow_icon),var_hud.hud_buff_height/sprite_get_height(spr_slow_icon),0,c_white,1)
	var_draw_position+=1
	var_draw_x_translate=(-1+2*(var_draw_position % 2))*(var_draw_position+var_draw_position % 2)/2
	}

	if(object_index=obj_footman)
	{
	if(footman_is_defending)
	{
	draw_sprite_ext(spr_defend_icon,0,var_hud.hud_buff_x+var_draw_x_translate*var_hud.hud_buff_width,var_hud.hud_buff_y,var_hud.hud_buff_width/sprite_get_width(spr_defend_icon),var_hud.hud_buff_height/sprite_get_height(spr_defend_icon),0,c_white,1)
	var_draw_position+=1
	var_draw_x_translate=(-1+2*(var_draw_position % 2))*(var_draw_position+var_draw_position % 2)/2
	}
	}

	if(vampiric_aura_percentage>0)
	{
	draw_sprite_ext(spr_vampiric_aura_icon,0,var_hud.hud_buff_x+var_draw_x_translate*var_hud.hud_buff_width,var_hud.hud_buff_y,var_hud.hud_buff_width/sprite_get_width(spr_defend_icon),var_hud.hud_buff_height/sprite_get_height(spr_defend_icon),0,c_white,1)
	var_draw_position+=1
	var_draw_x_translate=(-1+2*(var_draw_position % 2))*(var_draw_position+var_draw_position % 2)/2
	}

	if(global.nils.spell_w_activated)
	{
	if(scr_is_enemies(id,global.nils)==0)
	{
	var var_distance=scr_get_distance(tile,global.nils.tile)
	if(var_distance<=global.nils.spell_w_range)
	{
	draw_sprite_ext(spr_spell_shield_button,0,var_hud.hud_buff_x+var_draw_x_translate*var_hud.hud_buff_width,var_hud.hud_buff_y,var_hud.hud_buff_width/sprite_get_width(spr_defend_icon),var_hud.hud_buff_height/sprite_get_height(spr_defend_icon),0,c_white,1)
	var_draw_position+=1
	var_draw_x_translate=(-1+2*(var_draw_position % 2))*(var_draw_position+var_draw_position % 2)/2
	}
	}

	}

	if(phase="sleep")
	{
	draw_sprite_ext(spr_sleep_icon,-1,var_hud.hud_buff_x+var_draw_x_translate*var_hud.hud_buff_width,var_hud.hud_buff_y,var_hud.hud_buff_width/sprite_get_width(spr_sleep_icon),var_hud.hud_buff_height/sprite_get_height(spr_sleep_icon),0,c_white,1)
	var_draw_position+=1
	var_draw_x_translate=(-1+2*(var_draw_position % 2))*(var_draw_position+var_draw_position % 2)/2
	}
*/




}
