// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_accuracy(){
var cursed=scr_is_debuffed(global.curse_struct)
accuracy=base_accuracy*(1*!cursed+global.curse_struct.accuracy_multiplier*cursed)
}