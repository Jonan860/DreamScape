
event_inherited()

rally_tile = noone
unfinished = 0
owner = noone

queue_list = ds_list_create()

build_progress = 0 // of 100
q_build_icon_x = x - sprite_get_width(spr_hexagon_pink)/2
q_build_icon_y = y - sprite_get_height(spr_hexagon_pink)/2

q_object = obj_footman
w_object = obj_elven_archer
a_object = obj_footman_defend_upgrade
s_object = obj_improved_bows_upgrade

w_build_icon_x = q_build_icon_x + sprite_get_width(spr_footman_icon)/2 + sprite_get_width(spr_elven_archer_icon)/2
w_build_icon_y = y - sprite_get_height(spr_hexagon_pink)/2

spr_a_button = spr_defend_icon
spr_q_button = spr_footman_icon
spr_w_button = spr_elven_archer_icon
spr_s_button = spr_improved_bows
q_info = "Footman" + " Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_footman))
w_info = "Archer" + " Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_elven_archer))
a_info = "Footman defend upgrade: Allows footmans to use the defend ability. " + "Cost " + string(ds_map_find_value(global.map_object_to_costs,obj_footman_defend_upgrade))
s_info = "Archer range upgrade: Increase the range of archers by " + string(1) + ". Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_footman_defend_upgrade))
tile = noone
HP = 400
max_HP = 400
damage_reduction = 0 

perform_a = function() {
	if(ds_list_find_index(queue_list, a_object) < 0 and !global.player.footman_has_defend_upgrade) {
		scr_recruit_unit(a_object)
	}
}