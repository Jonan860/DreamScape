/// @description Insert description here
// You can write your code in this editor
event_inherited()
experience=0
experience_to_level_up=300
experience_to_level_up_increase_rate=1.5
lvl=1
spell_q_cooldown_current=0
spell_w_cooldown_current=0
spell_e_cooldown_current=0
spell_r_cooldown_current=0
spell_q_cooldown_max=room_speed*20
spell_w_cooldown_max=room_speed*20
spell_e_cooldown_max=room_speed*20
spell_r_cooldown_max=room_speed*20
spell_q_lvl=0
spell_w_lvl=0
spell_e_lvl=0
spell_r_lvl=0
spr_s_button=spr_resurrection_icon

s_info="Resurrects a Hero Soul on the same tile after 60 sec"




accumulated_level_up_stat_increase=1.5
HP_level_up_multiplier=power(accumulated_level_up_stat_increase,1/4)
damage_level_up_multiplier=power(accumulated_level_up_stat_increase,3/8)
armor_level_up_multiplier=power(accumulated_level_up_stat_increase,1/8)
evasion_level_up_multiplier=power(accumulated_level_up_stat_increase,1/8)
mana_level_up_multiplier=power(accumulated_level_up_stat_increase,1/4)
mana_regen_level_up_multiplier=power(accumulated_level_up_stat_increase,1/4)
HP_regen_level_up_multplier=power(accumulated_level_up_stat_increase,1/4)
accuracy_level_up_multiplier=power(accumulated_level_up_stat_increase,1/4)

//hp,damage,reduction,accuracy,evasion