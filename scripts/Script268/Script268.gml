// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_curse_unit(curse_target){
with(curse_target)
{
	scr_apply_debuff(global.curse_struct,0)
		scr_update_accuracy()
}
}