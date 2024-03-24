event_inherited()
x_translate = 0; y_translate = 0
owner = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 50
max_HP = 50
damage = 0
damage_reduction = 0.2
accuracy = 1
base_accuracy = 1
evasiveness = 0.8
target = noone
altitude = "ground"
 //sekunder
to_build_with_spade = noone
is_building = noone
spr_hammer_sub = 0
human_barracks_build_progress = 0 // of 100
human_barracks_build_queue_lenght = 0

queue_list = ds_list_create()

progress_bar_x1 = global.hud.hud_width / 4
progress_bar_x2 = global.hud.hud_width * 3/4
progress_bar_y1 = global.camera_height - global.hud.hud_height / 2
progress_bar_y2 = global.camera_height - global.hud.hud_height * (1/2 - 1/20)
build_progress = 0 // of 100

q_button = {
	object : obj_footman,
	info : "Barrack, Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_human_barrack)),
	icon : spr_human_barracks_icon,
	icon_x : x - sprite_get_width(spr_hexagon_pink) / 2,
	icon_y : y - sprite_get_height(spr_hexagon_pink) / 2
}

w_button = {
	object : obj_elven_archer,
	icon_x : q_button.icon_x + sprite_get_width(spr_footman_icon) / 2 + sprite_get_width(spr_elven_archer_icon) / 2,
	icon_y : y - sprite_get_height(spr_hexagon_pink) / 2,
	info : "Arcane Sanctum, Cost: "+string(ds_map_find_value(global.map_object_to_costs, obj_arcane_sanctum)),
	icon : spr_arcane_sanctum_icon
}

s_button = {
	info : "Resurrects a Hero soul on the same tile after 60 sec",
	icon : spr_resurrection_icon
}

ds_map_add(buttonToSkill, "q", q_button)
ds_map_add(buttonToSkill, "w", w_button)
ds_map_add(buttonToSkill, "s", s_button)
buttons = ["q", "w", "s"]