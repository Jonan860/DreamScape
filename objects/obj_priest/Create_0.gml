/// @description Insert description here
// You can write your code in this editor
event_inherited()
owner=noone
movement_cost=3*room_speed
attack_cost=1.5*room_speed
max_action_bar=3*room_speed
action_bar=0
range=2
HP=70
max_HP=70
HP_regeneration_rate=0.1
damage=3
damage_reduction=0
accuracy=1
evasiveness=0.5
altitude="ground"
experience_to_give=100
mana=50
max_mana=100
mana_regen_rate_per_sec=0.6



spell_q_cooldown_current=0
heal_autocast_is_on=1
heal_icon_animation_index=0
heal_icon_animation_speed=8
///is_healing=0 in phase instead
spr_q_button=spr_heal_icon
q_info="Heals a target friendly non-mechanical wounded unit for "+string(global.heal_struct.heal_amount)+" hit points"
+"\n"+ "Cooldown: "+string(global.heal_struct.cooldown)
+"\n"+ "Mana cost "+string(global.heal_struct.mana_cost)
+"\n"+ "Range: "+string(global.heal_struct.range)
q_info_abilities=q_info