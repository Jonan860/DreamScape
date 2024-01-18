function scr_update_info_text(){
	if(object_index == obj_ida) {
		q_info = "Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: " + string(spell_q_cooldown_max / room_speed)
		 + "\n Mana cost: " + string(spell_q_mana_cost) + " Duration: " + string(freeze_time / room_speed) + " Range: " + string(1)
		
		w_info = "Hurls an fireball towards the north,\n damaging everything in its path\n Cooldown: " + string(spell_w_cooldown_max / room_speed)
		 + "\n Mana cost: " + string(spell_w_mana_cost) + "\n Damage: " + string(katon_gokakyu_no_jutsu_damage)
		
		e_info = "Swaps the position of two targeted friendly units.\n" + "Mana_cost: " + string(spell_e_mana_cost) + "\n"
		 + "Cooldown: " + string(spell_e_cooldown_max / room_speed)
		r_info = "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
		 + "Mana: " + string(spell_r_mana_cost) + "\n"
		 + "Cooldown: " + string(spell_r_cooldown_max / room_speed) + "\n"
		 + "Damage: " + string(earthshatter_damage_per_distance[|0]) + ", " + string(earthshatter_damage_per_distance[|1]) + ", " + string(earthshatter_damage_per_distance[|2]) + "\n"
		 + "Stun duration: " + string(earthshatter_stun_per_distance[|0]) + ", " + string(earthshatter_stun_per_distance[|1]) + ", " + string(earthshatter_stun_per_distance[|2])
	}

	if(object_index = obj_nils) {
		q_info = "A holy light that can heal a friendly living unit."
		 + "\n Cooldown: " + string(spell_q_cooldown_max / 60)
		 + "\n Mana Cost: " + string(spell_q_mana_cost)
		 + "\n Heal Amount: " + string(global.heal_struct.heal_amount)
		 
		w_info = "Projects a magical barrier, reducing incoming damage on the hero and surrounding units for a short period."
		 + "\n Cooldown: " + string(spell_w_cooldown_max / 60)
		 + "\n Damage reduction: " + string(spell_w_damage_reduction)
		 + "\n Mana Cost: " + string(spell_w_mana_cost)
		 + "\n Duration: " + string(spell_w_duration)


		e_info = "The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies" //Spinjitzu is a close-combat martial arts technique in the world of Ninjago. It involves the user tapping into their inner balance while spinning rapidly,
		 + "\n Cooldown: " + string(spell_e_cooldown_max / 60)
		 + "\n Mana Cost: " + string(spell_e_mana_cost)
		 + "\n Duration: " + string(spell_e_duration)
		 + "\n Damage: " + "Damage x " + string(spell_e_damage_multiplier)
		 
		r_info = "Summons a powerful golden dragon"
		 + "\n Cooldown: " + string(spell_r_cooldown_max / 60)
		 + "\n Mana Cost: " + string(list_spell_r_cost[|0]) + ", " + string(list_spell_r_cost[|1])) + ", " + string(list_spell_r_cost[|2])
		 + "\n Duration: " + string(spell_r_duration)
	}
}