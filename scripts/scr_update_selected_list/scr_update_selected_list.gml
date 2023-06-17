// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_selected_list(){
ds_list_clear(selected_units)
scr_ds_list_append(selected_units,grounds_list)
scr_ds_list_append(selected_units,airs_list)
scr_ds_list_append(selected_units,invisibles_list)

//scr_order_units_bypriority
}