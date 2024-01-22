event_inherited()
experience = 0
experience_to_level_up = 300
experience_to_level_up_increase_rate = 1.5
lvl = 1

spr_s_button = spr_resurrection_icon

s_info = "Resurrects a Hero Soul on the same tile after 60 sec"

accumulated_level_up_stat_increase = 1.5
HP_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)
damage_level_up_multiplier = power(accumulated_level_up_stat_increase, 3/8)
armor_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/8)
evasion_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/8)
mana_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)
mana_regen_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)
HP_regen_level_up_multplier = power(accumulated_level_up_stat_increase, 1/4)
accuracy_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)


draw_hud_buttons_with_info = method(scr_dra_hud_button_with_hover_inf_hero, undefined)

hud_draw_gui = method(scr_hud_draw_gui_hero, undefined)