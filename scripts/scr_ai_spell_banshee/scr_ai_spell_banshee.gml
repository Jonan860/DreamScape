// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ai_spell_banshee() {
	if(object_index=obj_banshee)
	{
		
		
		if(mana>=global.curse_struct.mana_cost and spell_q_cooldown_current<=0 and curse_autocast_is_on and altitude!="invisible")
	{
		scr_banshee_curse_ai()
		
		
	}
	}


}