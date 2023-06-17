// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_can_hunt(){
	var freezed=scr_is_debuffed(global.freeze_struct)
var var_output=(altitude!="invisible" and !freezed and !eaten)
return var_output
}