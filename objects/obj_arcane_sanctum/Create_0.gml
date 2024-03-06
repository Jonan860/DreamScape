event_inherited()

rally_tile = noone
unfinished = 0
owner = noone

queue_list = ds_list_create()

progress_bar_x1 = global.hud.hud_width / 4
progress_bar_x2 = global.hud.hud_width * 3/4
progress_bar_y1 = global.camera_height - global.hud.hud_height/2
progress_bar_y2 = global.camera_height - global.hud.hud_height * (1/2 - 1/20)
build_progress = 0 
q_build_icon_x = x - sprite_get_width(spr_hexagon_pink) / 2
q_build_icon_y = y - sprite_get_height(spr_hexagon_pink) / 2

tile = noone

max_HP = 400
HP = max_HP
damage_reduction = 0
element = noone //fortified later maybe

q_button = {
	info : "Sorceress, Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_sorceress)),
	object : obj_sorceress,
	icon : spr_sorceress_icon
}

w_button = {
	info : "Priest, Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_priest)),
	object : obj_priest,
	icon : spr_priest_icon
}

a_button = {
	object : obj_sorceress_invisibility_upgrade,
	icon : spr_invisibility_icon
}
with(a_button) {
	info = "Sorceress invisibility upgrade: Allows sorceresses to cast invisibility on a ally unit, " + "\n and increases mana of sorceresses by " + string(global.invisibility_upgrade_mana_bonus) + " and mana regen. " + "Cost " + string(ds_map_find_value(global.map_object_to_costs, object))
}

s_button = {
	object : obj_priest_dispel_upgrade,
	icon : spr_dispel_icon
}
with(s_button) {
	info = "Priest dispel upgrade: Allows priests to cast dispel, decreaseing the duration of buff an debuff in an area " + ". Cost: " + string(ds_map_find_value(global.map_object_to_costs, object))
}	