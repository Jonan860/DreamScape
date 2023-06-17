// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_start_earthshatter_tile(tile_to_shatter){
phase="earthshatter jump"
target=tile_to_shatter
move_towards_point(target.x,target.y,2*sprite_get_height(spr_hexagon_pink)/room_speed)
total_time_to_earthshatter_impact=point_distance(x,y,target.x,target.y)/sprite_get_height(spr_hexagon_pink)/(2)
time_until_earthshatter_impact=total_time_to_earthshatter_impact
}