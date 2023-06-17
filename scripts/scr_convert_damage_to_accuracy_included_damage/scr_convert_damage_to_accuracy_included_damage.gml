// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_convert_damage_to_accuracy_included_damage(victim){
damage*=power((1-victim.evasiveness),accuracy)
}