function scr_hunt_attack_enemy() {
	scr_check_target_existence_perform_action()
	if(owner=global.enemy and phase="hunt" and action_bar>=attack_cost)
	{
	
		if(target.object_index=obj_crystal)
		{
			var var_crystal_target=target
			var var_random=irandom(30)
		var var_n=0
		while(target==var_crystal_target)
		{
		with(obj_unit)
		{
			if(self==other)
			{
			var var_c=random(3)
			var_c=0
			}
			if(scr_is_enemies(self,other) and phase!="dead")
			{
		if(var_n=var_random)
		{
		other.target=self
		break;
		}
		var_n+=1
		}
		}
		}
		scr_attack_target()
		scr_attack_target()
		target=var_crystal_target
		}
		else
		{
	scr_attack_target()
		}
	}


}
