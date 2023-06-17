// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rotate_selected_units(){
with(global.tile_selected)
{
scr_ds_list_left_rotate(selected_units)
}
}
