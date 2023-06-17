// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_right_pressed_autocast(var_selected_unit){

with(var_selected_unit)
{
if(object_index==obj_sorceress)
{
			
if(scr_is_q_button_pressed())
	{
			slow_autocast_is_on=!slow_autocast_is_on
			}
}

if(object_index==obj_priest)
{
			
if(scr_is_q_button_pressed())
	{
			heal_autocast_is_on=!heal_autocast_is_on
			}
}
}
}