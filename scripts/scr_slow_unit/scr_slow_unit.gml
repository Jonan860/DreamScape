// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_slow_unit(slow_target){
	with(slow_target)
	{
		scr_apply_debuff(global.slow_struct,0)
	}

}