// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stun(unit,time_to_stun){
	with(unit)
	{
	stunned=1
	time_until_stunned_clear=time_to_stun
	}
}