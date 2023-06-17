/// @description Insert description here
// You can write your code in this editor


event_inherited()

rally_tile=noone
unfinished=0
owner=noone

queue_list=ds_list_create()


progress_bar_x1=global.hud.hud_width/4
progress_bar_x2=global.hud.hud_width*3/4
progress_bar_y1=global.camera_height-global.hud.hud_height/2
progress_bar_y2=global.camera_height-global.hud.hud_height*(1/2-1/20)
build_progress=0 
q_build_icon_x=x-sprite_get_width(spr_hexagon_pink)/2
q_build_icon_y=y-sprite_get_height(spr_hexagon_pink)/2
//q_queue_length_x=q_build_icon_x+sprite_get_width(spr_footman_icon)*2/5
//q_queue_lenght_y=q_build_icon_y-sprite_get_height(spr_footman_icon)*2/5

q_object=obj_sorceress
w_object=obj_priest
a_object=obj_sorceress_invisibility_upgrade
s_object=obj_priest_dispel_upgrade
//w_object=
//a_object=obj_footman_defend_upgrade
//s_object=obj_improved_bows_upgrade

//w_build_icon_x=q_build_icon_x+sprite_get_width(spr_footman_icon)/2+sprite_get_width(spr_elven_archer_icon)/2
//w_build_icon_y=y-sprite_get_height(spr_hexagon_pink)/2

//spr_a_button=spr_defend_icon
//spr_q_button=spr_footman_icon
//spr_w_button=spr_elven_archer_icon
//spr_s_button=spr_improved_bows
spr_q_button=spr_sorceress_icon
spr_w_button=spr_priest_icon
spr_a_button=spr_invisibility_icon
spr_s_button=spr_dispel_icon
tile=noone
HP=400
max_HP=400
damage_reduction=0
element=noone //fortified later maybe

q_info="Sorceress, Cost: "+string(ds_map_find_value(global.map_object_to_costs,obj_sorceress))
w_info="Priest, Cost: "+string(ds_map_find_value(global.map_object_to_costs,obj_priest))
a_info="Sorceress invisibility upgrade: Allows sorceresses to cast invisibility on a ally unit, "+"\n and increases mana of sorceresses by "+string(global.invisibility_upgrade_mana_bonus)+" and mana regen. "+"Cost "+string(ds_map_find_value(global.map_object_to_costs,a_object))
s_info="Priest dispel upgrade: Allows priests to cast dispel, decreaseing the duration of buff an debuff in an area "+". Cost: "+ string(ds_map_find_value(global.map_object_to_costs,s_object))