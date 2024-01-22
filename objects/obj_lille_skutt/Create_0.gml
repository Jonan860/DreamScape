event_inherited()
x_translate=0
y_translate=0
owner=noone
movement_cost=3*room_speed
attack_cost=1.5*room_speed
max_action_bar=3*room_speed
action_bar=0
range=1
HP=50
max_HP=50
damage=0
damage_reduction=0.2
accuracy=1
base_accuracy=1
evasiveness=0.8
target=noone
altitude="ground"
 //sekunder
to_build_with_spade=noone
is_building=noone
spr_hammer_sub=0
human_barracks_build_progress=0 // of 100
human_barracks_build_queue_lenght=0
human_barracks_build_icon_x=x-sprite_get_width(spr_hexagon_pink)/2 ///updated in scr_move_to_tile
human_barracks_build_icon_y=y-sprite_get_height(spr_hexagon_pink)/2
human_barracks_queue_length_x=human_barracks_build_icon_x+sprite_get_width(spr_human_barracks_icon)*2/5
human_barracks_queue_lenght_y=human_barracks_build_icon_y-sprite_get_height(spr_human_barracks_icon)*2/5
human_barracks_progress_bar_x1=human_barracks_build_icon_x-sprite_get_width(spr_human_barracks_icon)*2/5
human_barracks_progress_bar_x2=human_barracks_build_icon_x+sprite_get_width(spr_human_barracks_icon)*2/5
human_barracks_progress_bar_y1=human_barracks_build_icon_y-sprite_get_height(spr_human_barracks_icon)*2/5
human_barracks_progress_bar_y2=human_barracks_build_icon_y-sprite_get_height(spr_human_barracks_icon)*2/5

arcane_sanctum_build_progress=0
arcane_sanctum_build_queue_lenght=0
arcane_sanctum_build_icon_x=x-sprite_get_width(spr_hexagon_pink)/2 ///updated in scr_move_to_tile
arcane_sanctum_build_icon_y=y-sprite_get_height(spr_hexagon_pink)/2
arcane_sanctum_queue_length_x=arcane_sanctum_build_icon_x+sprite_get_width(spr_arcane_sanctum_icon)*2/5
arcane_sanctum_queue_lenght_y=arcane_sanctum_build_icon_y-sprite_get_height(spr_arcane_sanctum_icon)*2/5
arcane_sanctum_progress_bar_x1=arcane_sanctum_build_icon_x-sprite_get_width(spr_arcane_sanctum_icon)*2/5
arcane_sanctum_progress_bar_x2=arcane_sanctum_build_icon_x+sprite_get_width(spr_arcane_sanctum_icon)*2/5
arcane_sanctum_progress_bar_y1=arcane_sanctum_build_icon_y-sprite_get_height(spr_arcane_sanctum_icon)*2/5
arcane_sanctum_progress_bar_y2=arcane_sanctum_build_icon_y-sprite_get_height(spr_arcane_sanctum_icon)*2/5
spr_q_button=spr_human_barracks_icon
spr_w_button=spr_arcane_sanctum_icon
spr_s_button=spr_resurrection_icon
queue_list=ds_list_create()


progress_bar_x1=global.hud.hud_width/4
progress_bar_x2=global.hud.hud_width*3/4
progress_bar_y1=global.camera_height-global.hud.hud_height/2
progress_bar_y2=global.camera_height-global.hud.hud_height*(1/2-1/20)
build_progress=0 // of 100
q_build_icon_x=x-sprite_get_width(spr_hexagon_pink)/2
q_build_icon_y=y-sprite_get_height(spr_hexagon_pink)/2
//q_queue_length_x=q_build_icon_x+sprite_get_width(spr_footman_icon)*2/5
//q_queue_lenght_y=q_build_icon_y-sprite_get_height(spr_footman_icon)*2/5

q_object=obj_footman
w_object=obj_elven_archer

w_build_icon_x=q_build_icon_x+sprite_get_width(spr_footman_icon)/2+sprite_get_width(spr_elven_archer_icon)/2
w_build_icon_y=y-sprite_get_height(spr_hexagon_pink)/2

w_object=obj_elven_archer

q_info="Barrack, Cost: "+string(ds_map_find_value(global.map_object_to_costs,obj_human_barrack))
w_info="Arcane Sanctum, Cost: "+string(ds_map_find_value(global.map_object_to_costs,obj_arcane_sanctum))
s_info="Resurrects a Hero soul on the same tile after 60 sec"

draw_hud_buttons_with_hover_info = method(scr_dra_hud_button_with_hover_inf_lille_skutt, undefined)
