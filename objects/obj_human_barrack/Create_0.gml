event_inherited()

rally_tile = noone
unfinished = 0
owner = noone

queue_list = ds_list_create()

build_progress = 0 // of 100
q_build_icon_x = x - sprite_get_width(spr_hexagon_pink)/2
q_build_icon_y = y - sprite_get_height(spr_hexagon_pink)/2

w_build_icon_x = q_build_icon_x + sprite_get_width(spr_footman_icon)/2 + sprite_get_width(spr_elven_archer_icon)/2
w_build_icon_y = y - sprite_get_height(spr_hexagon_pink)/2

tile = noone
HP = 400
max_HP = 400
damage_reduction = 0 

q_button = {
	char : "q",
	icon : spr_footman_icon,
	info : "Footman" + " Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_footman)),
	object : obj_footman
}
a_button = {
	char : "a",
	icon : spr_defend_icon,
	info : "Footman defend upgrade: Allows footmans to use the defend ability. " + "Cost " + string(ds_map_find_value(global.map_object_to_costs,obj_footman_defend_upgrade)),
	object : obj_footman_defend_upgrade
}
w_button = {
	char : "w",
	icon : spr_elven_archer_icon,
	info : "Archer" + " Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_elven_archer)),
	object :  obj_elven_archer
}
s_button = {
	char : "s",
	icon : spr_improved_bows,
	info : "Archer range upgrade: Increase the range of archers by " + string(1) + ". Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_footman_defend_upgrade)),
	object : obj_improved_bows_upgrade	
}

perform = function(char) {
	if(!unfinished and canRecruit(char)) {
		recruit(char)
	}
}

ds_map_add(buttonToSkill, "q", q_button)
ds_map_add(buttonToSkill, "w", w_button)
ds_map_add(buttonToSkill, "a", a_button)
ds_map_add(buttonToSkill, "s", s_button)
var letters = ["q", "w", "a", "s"]
for(var i = 0; i < array_length(letters); i++) {
	with(buttonToSkill[? letters[i]]) {
		owner = other.id
		perform = function() {
			owner.perform(char)
		}
	}
}