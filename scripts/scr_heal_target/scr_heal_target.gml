// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_heal_target(){
target.HP=min(target.max_HP,target.HP+global.heal_struct.heal_amount)
target.heal_animation_time_left_in_sec=global.heal_struct.animation_time
}