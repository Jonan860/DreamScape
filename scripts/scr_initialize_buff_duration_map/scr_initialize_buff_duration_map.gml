// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_initialize_debuff_duration_map(){
ds_map_add(map_of_debuff_duration,global.curse_struct,0)
ds_map_add(map_of_debuff_duration,global.slow_struct,0)
ds_map_add(map_of_debuff_duration,global.freeze_struct,0)
}