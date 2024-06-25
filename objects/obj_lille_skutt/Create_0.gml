event_inherited()
global.lille_skutt = id
x_translate = 0; y_translate = 0
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
altitude = ALTITUDES.ground
 //sekunder
is_building = noone
spr_hammer_sub = 0
human_barracks_build_progress = 0 // of 100
human_barracks_build_queue_lenght = 0

queue_list = []

progress_bar_x1 = global.hud.hud_width / 4
progress_bar_x2 = global.hud.hud_width * 3/4
progress_bar_y1 = global.camera_height - global.hud.hud_height / 2
progress_bar_y2 = global.camera_height - global.hud.hud_height * (1/2 - 1/20)
build_progress = 0 // of 100

buildBarracks = createSpell(SPELLS.buildBarracks, "q")
buildBarracks.lvl = 1
buildArcaneSanctum = createSpell(SPELLS.buildArcaneSanctum, "w")
buildArcaneSanctum.lvl = 1
skills = [buildBarracks, buildArcaneSanctum]
s_button = {
	info : "Resurrects a Hero soul on the same tile after 60 sec",
	icon : spr_resurrection_icon,
	lvl : 1
}
ds_map_add(buttonToSkill, "s", s_button)
buttons = ["q", "w", "s"]


