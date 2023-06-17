// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_make_all_unit_detarget(targeto){
	with(obj_unit)
		{
		//if(scr_is_enemies(other,id))
		//{
		if(target==targeto)
		{
			scr_disblend_list(path)
			ds_list_clear(path)
			scr_update_arrow_path()
			destination=noone
		target=noone
		phase="idle"
		action_bar=0
		}
		//}
		}
}