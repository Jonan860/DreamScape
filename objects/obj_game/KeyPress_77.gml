/// @description Insert description here
// You can write your code in this editor
if(room=map)
{
if(abs(window_get_height()- max_window_height)<1)
{
window_set_size(min_window_width,min_window_height)
}
else
if(abs(window_get_height() - min_window_height)<1)
{
window_set_size(max_window_width,max_window_height)
}
show_debug_message(string(window_get_height())+","+string(window_get_width()))
}