function scr_draw_hud_button_and_hover_footman(argument0) {

	var var_selected_unit=argument0

	if(var_selected_unit.object_index==obj_footman)
	{
	if(global.player.footman_has_defend_upgrade)
	{
		with(var_selected_unit)
		{
	draw_sprite_ext(spr_defend_icon,0,other.hud_q_button_x,other.hud_q_button_y,other.spell_button_width/sprite_get_width(spr_q_button),other.spell_button_height/sprite_get_height(spr_q_button),0,-1,1)

		}}
	else
	{
		with(var_selected_unit)
		{
	draw_sprite_ext(spr_defend_icon,0,other.hud_q_button_x,other.hud_q_button_y,other.spell_button_width/sprite_get_width(spr_q_button),other.spell_button_height/sprite_get_height(spr_q_button),0,-1,0.5)
		}
	}
	}


}
