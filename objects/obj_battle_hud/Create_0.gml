var var_camera_height = camera_get_view_height(view_camera[0])
var var_camera_width = camera_get_view_width(view_camera[0])
hud_width = camera_get_view_width(view_camera[0])
hud_height = camera_get_view_height(view_camera[0])/3
spell_button_height = hud_height/4
spell_button_width = spell_button_height

hud_spell_part_width = hud_width/3
hud_spell_part_height = hud_height
q_button = {
	_x : hud_width - hud_spell_part_width + spell_button_width,
	_y : var_camera_height - spell_button_height	
}
w_button = {
	_x : q_button._x + spell_button_width,
	_y : q_button._y
}
e_button = {
	_x : w_button._x + spell_button_width,
	_y : w_button._y
}
r_button = {
	_x : e_button._x + spell_button_width,
	_y : q_button._y
}
a_button = {
	_x : q_button._x,
	_y : q_button._y - spell_button_height
}
///hud_r_spell_y=hud_w_button_y
s_button = {
	_x : w_button._x,
	_y : q_button._y - spell_button_height
}

abilities_button = {
	_x : r_button._x,
	_y : r_button._y - spell_button_height
}

charToButton = ds_map_create()
ds_map_add(charToButton, "q", q_button)
ds_map_add(charToButton, "w", w_button)
ds_map_add(charToButton, "e", e_button)
ds_map_add(charToButton, "r", r_button)
ds_map_add(charToButton, "a", a_button)
ds_map_add(charToButton, "s", s_button)
ds_map_add(charToButton, "d", abilities_button)

gui_display_abilities = 0

lvl_text_x = var_camera_width/2
lvl_text_y = var_camera_height - 3 * hud_height/4

stats_text_y_space = 2/15 * hud_height
HP_text_x = lvl_text_x - 4 * hud_height/5
HP_text_y = lvl_text_y + hud_height/15 + 64 - stats_text_y_space
evasion_text_x = HP_text_x
evasion_text_y = HP_text_y + stats_text_y_space
armor_text_x = HP_text_x
armor_text_y = evasion_text_y + stats_text_y_space
accuracy_text_x = HP_text_x
accuracy_text_y = armor_text_y + stats_text_y_space
range_text_x = HP_text_x
range_text_y = accuracy_text_y + stats_text_y_space


mana_text_x = lvl_text_x
mana_text_y = lvl_text_y + stats_text_y_space
damage_text_x = mana_text_x
damage_text_y = mana_text_y + stats_text_y_space
armor_coverage_text_x = mana_text_x
armor_coverage_text_y = damage_text_y + stats_text_y_space
attack_rate_text_x = mana_text_x
attack_rate_text_y = armor_coverage_text_y + stats_text_y_space

summon_time_bar_x1 = var_camera_width/2 - 2 * spell_button_width
summon_timer_bar_y1 = var_camera_height - 4 * spell_button_height
summon_time_bar_x2 = var_camera_width/2 + 2 * spell_button_width
summon_time_bar_y2 = var_camera_height - 4 * spell_button_height + spell_button_height/4
mana_bar_x1 = summon_time_bar_x1
mana_bar_y1 = summon_time_bar_y2
mana_bar_x2 = summon_time_bar_x2
mana_bar_y2 = summon_time_bar_y2+summon_time_bar_y2 - summon_timer_bar_y1
HP_bar_x1 = summon_time_bar_x1
HP_bar_y1 = mana_bar_y2
HP_bar_x2 = summon_time_bar_x2
HP_bar_y2 = 2 * mana_bar_y2 - mana_bar_y1
XP_bar_x1 = summon_time_bar_x1
XP_bar_y1 = HP_bar_y2
XP_bar_x2 = summon_time_bar_x2
XP_bar_y2 = 2 * HP_bar_y2 - HP_bar_y1


hud_buff_x = var_camera_width/2

hud_buff_width = spell_button_width/2
hud_buff_height = spell_button_height/2
hud_buff_y = var_camera_height - hud_buff_height

progress_bar_x1 = hud_width / 4
progress_bar_x2 = hud_width * 3/4
progress_bar_y1 = var_camera_height - hud_height/2
progress_bar_y2 = var_camera_height - hud_height * (1/2 - 1/20)

length_of_training_queue_icon = 1/7 * (progress_bar_x2 - progress_bar_x1)
training_queue_x = progress_bar_x1 + 1/2 * length_of_training_queue_icon
training_queue_y = progress_bar_y1 - 32 - length_of_training_queue_icon + 1/2 * length_of_training_queue_icon