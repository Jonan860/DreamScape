/// @description Insert description here
// You can write your code in this editor
event_inherited()
owner=noone
movement_cost=3*room_speed
attack_cost=1.5*room_speed
max_action_bar=3*room_speed
action_bar=0
range=1
HP=100
max_HP=100
HP_regeneration_rate=0.2
damage=10
damage_reduction=0.5
accuracy=1
base_accuracy=1
evasiveness=0.5
target=noone
spell_q_lvl=0
spell_w_lvl=0
spell_e_lvl=0
spell_r_lvl=0
number_of_ability_points=1
altitude="ground"

max_mana=100
mana=100
mana_regen_rate_per_sec=0.6 //per second
spell_q_mana_cost=30
list_spell_q_cost=ds_list_create()
ds_list_add(list_spell_q_cost,spell_q_mana_cost,1.2*spell_q_mana_cost,1.2*1.2*spell_q_mana_cost,1.2*1.2*spell_q_mana_cost,1.2*1.2*spell_q_mana_cost)
spell_q_range=4
spell_q_heal_amount=50
list_spell_q_heal_amount=ds_list_create()
ds_list_add(list_spell_q_heal_amount,30,60,90,150.150)
spell_w_mana_cost=15
list_spell_w_cost=ds_list_create()
ds_list_add(list_spell_w_cost,spell_w_mana_cost,spell_w_mana_cost*1.2,spell_w_mana_cost*1.2*1.2,spell_w_mana_cost,spell_w_mana_cost)
spell_w_duration=5
spell_w_activated=0
spell_w_range=1
spell_w_damage_reduction=0.3
list_spell_w_damage_reduction=ds_list_create()
ds_list_add(list_spell_w_damage_reduction,spell_w_damage_reduction,0.6,0.9,0.9,0.9)
spell_e_mana_cost=30
list_spell_e_cost=ds_list_create()
ds_list_add(list_spell_e_cost,spell_e_mana_cost,1.2*spell_e_mana_cost,1.2*1.2*spell_e_mana_cost,1.2*1.2*spell_e_mana_cost,1.2*1.2*spell_e_mana_cost)
spell_e_duration=10
spell_e_damage_multiplier=1
list_spell_e_damage_multiplier=ds_list_create()
ds_list_add(list_spell_e_damage_multiplier,1,1.2,1.2*1.2,1.2*1.2,1.2*1.2)

spell_r_mana_cost=80
list_spell_r_cost=ds_list_create()
ds_list_add(list_spell_r_cost,spell_r_mana_cost,1.2*spell_r_mana_cost,1.2*1.2*spell_r_mana_cost,1.2*1.2*spell_r_mana_cost,1.2*1.2*spell_r_mana_cost)
spell_r_range=1
spell_r_duration=180
//spell_e_damage_multiplier=1
//list_e_damage_multiplier=ds_list_create()
spell_q_cooldown_max=room_speed*20
spell_w_cooldown_max=room_speed*10
spell_e_cooldown_max=room_speed*20
spell_r_cooldown_max=room_speed*20
spell_q_string="holy light"
spell_w_string="spell_shield"
spell_e_string="ninjago"
spell_r_string="golden dragon"
spr_q_button=spr_holy_light_button
spr_w_button=spr_spell_shield_button
spr_e_button=spr_ninjago_button
spr_r_button=spr_golden_dragon_icon
q_info="A holy light that can heal a friendly living unit."
+"\n Cooldown: "+string(spell_q_cooldown_max/60)
+"\n Mana Cost: "+string(spell_q_mana_cost)
+"\n Heal Amount: "+string(spell_q_heal_amount)

q_info_abilities="A holy light that can heal a friendly living unit."
+"\n level: 1, 2, 3 Mana Cost: "+string(ds_list_find_value(list_spell_q_cost,0))+", "+string(ds_list_find_value(list_spell_q_cost,1))+", "+string(ds_list_find_value(list_spell_q_cost,2))
+"\n Heal Amount: "+string(ds_list_find_value(list_spell_q_heal_amount,0))+", "+string(ds_list_find_value(list_spell_q_heal_amount,1))+", "+string(ds_list_find_value(list_spell_q_heal_amount,2))

w_info="Projects a magical barrier, reducing incoming damage on the hero and surrounding units for a short period."
+"\n Cooldown: "+string(spell_w_cooldown_max/60)
+"\n Damage reduction: "+string(floor(100*spell_w_damage_reduction))+" %"
+"\n Mana Cost: "+string(spell_w_mana_cost)
+"\n Duration: "+string(spell_w_duration)

w_info_abilities="Projects a magical barrier, reducing incoming damage on the hero and surrounding units for a short period."
+"\n level: 1, 2, 3"
+"\n Cooldown: "+string(spell_w_cooldown_max/60)
+"\n Damage reduction: "+string(floor(100*ds_list_find_value(list_spell_w_damage_reduction,0)))+string(floor(100*ds_list_find_value(list_spell_w_damage_reduction,1)))+string(floor(100*ds_list_find_value(list_spell_w_damage_reduction,2)))
+"\n Mana Cost: "+string(ds_list_find_value(list_spell_w_cost,0))+", "+string(ds_list_find_value(list_spell_w_cost,1))+", "+string(ds_list_find_value(list_spell_w_cost,2))
+"\n Duration: "+string(spell_w_duration)

e_info="The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies" //Spinjitzu is a close-combat martial arts technique in the world of Ninjago. It involves the user tapping into their inner balance while spinning rapidly,
+"\n Cooldown: "+string(spell_e_cooldown_max/60)
+"\n Mana Cost: "+string(spell_e_mana_cost)
+"\n Duration: "+string(spell_e_duration)
+"\n Damage: "+"Damage x "+string(spell_e_damage_multiplier)

e_info_abilities="The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies"
+"\n Cooldown: "+string(spell_e_cooldown_max/60)
+"\n Mana Cost: "+string(ds_list_find_value(list_spell_e_cost,0))+", "+string(ds_list_find_value(list_spell_e_cost,1))+", "+string(ds_list_find_value(list_spell_e_cost,2))
+"\n Duration: "+string(spell_e_duration)
+"\n Damage: "+"Damage x "+string(ds_list_find_value(list_spell_e_damage_multiplier,0))+", "+string(ds_list_find_value(list_spell_e_damage_multiplier,1))+", "+string(ds_list_find_value(list_spell_e_damage_multiplier,2))

r_info="Summons a powerful golden dragon"
+"\n Cooldown: "+string(spell_r_cooldown_max/60)
+"\n Mana Cost: "+string(ds_list_find_value(list_spell_r_cost,0))+", "+string(ds_list_find_value(list_spell_r_cost,1))+", "+string(ds_list_find_value(list_spell_r_cost,2))
+"\n Duration: "+string(spell_r_duration)
r_info_abilities=r_info
ds_list_level_sprites=ds_list_create()
ds_list_add(ds_list_level_sprites,0,spr_nils_level_1,spr_nils_level_2,spr_nils_level_3,spr_nils_level_4,spr_nils_level_5,spr_nils_level_6,spr_nils_level_7,spr_nils_level_8)
spr_height=sprite_height
spr_width=sprite_width
