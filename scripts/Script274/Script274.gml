// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_apply_debuff(global_debuff_struct,level){
var debuff_struct= new constructor_local_debuff(global_debuff_struct,level)
	ds_list_add(list_of_active_debuff_structs,debuff_struct)
	scr_sort_debuff_list_after_dispellity()
}