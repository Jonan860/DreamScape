// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ds_list_left_rotate(list){
var size=ds_list_size(list)
var list2=ds_list_create()
for(i=1;i<=size;i+=1)
{
ds_list_add(list2,ds_list_find_value(list,i mod size))
}
ds_list_copy(list,list2)
ds_list_destroy(list2)
}