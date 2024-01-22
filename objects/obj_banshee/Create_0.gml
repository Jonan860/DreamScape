event_inherited()
owner = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 2
HP = 70
max_HP = 70
HP_regeneration_rate = 0.1
damage = 4
damage_reduction = 0
accuracy = 1
evasiveness = 0.5
altitude = "ground"
experience_to_give = 100
mana = 100
max_mana = 100
mana_regen_rate_per_sec = 0.3
q_info = ""
q_info_abilities = q_info
curse_icon_animation_index = 0
curse_icon_animation_speed = 8 //frames per sec
curse_autocast_is_on = 1

spr_q_button = spr_curse_icon_autocast

draw_hud_buttons_with_info = method(scr_dra_hud_buttons_with_hover_inf_banshee, undefined)

ai = method(scr_ai_spell_banshee, undefined)

attack_target = method(scr_attack_target_banshee, undefined)