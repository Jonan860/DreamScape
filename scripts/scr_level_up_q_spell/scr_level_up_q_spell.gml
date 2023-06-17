function scr_level_up_q_spell() {
		var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)
				global.hud.gui_display_abilities=0
	spell_q_lvl+=1
	if(var_selected=global.nils)
	{
	global.nils.spell_q_heal_amount=ds_list_find_value(global.nils.list_spell_q_heal_amount,spell_q_lvl-1)
	global.nils.spell_q_mana_cost=ds_list_find_value(global.nils.list_spell_q_cost,spell_q_lvl-1)
	global.nils.q_info="A holy light that can heal a friendly living unit"
+"\n Cooldown: "+string(spell_q_cooldown_max/60)
+"\n Mana Cost: "+string(spell_q_mana_cost)
+"\n Heal Amount: "+string(spell_q_heal_amount)
	}
	if(var_selected=global.ida)
	{
	var freeze_time=ds_list_find_value(global.freeze_struct.duration_list,spell_q_lvl-1)
	var freeze_mana_cost=ds_list_find_value(global.ida.spell_q_struct.mana_cost_list,spell_q_lvl-1)
	global.ida.q_info="Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: "+string(freeze_mana_cost)
+"\n Mana cost: "+string(freeze_mana_cost)+" Duration: "+string(freeze_time)
	}
	number_of_ability_points-=1
		


}
