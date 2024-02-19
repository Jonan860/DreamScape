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
damage = 3
damage_reduction = 0
accuracy = 1
evasiveness = 0.5
altitude = "ground"
experience_to_give = 100
mana = 50
max_mana = 100
mana_regen_rate_per_sec = 0.6
spell_q = createSpell(SPELLS.heal)
spell_w = createSpell(SPELLS.invisibility)
skills = [spell_q, spell_w]

draw_hud_buttons_with_info = method(scr_dra_hud_buttons_with_hover_inf_priest, undefined)

attack_target = method(scr_attack_target_priest, undefined)