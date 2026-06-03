function scr_attack_target_abomination() {
	if(object_index=obj_abomination)
	{
		scr_attack_hp_reduction(self,target)
	var buther_knife=instance_create_depth((x+target.x)/2,(y+target.y)/2,-10,obj_butcher_knife)
	buther_knife.image_angle=90+point_direction(x,y,target.x,target.y)
	buther_knife.image_xscale=(sprite_width/2)/buther_knife.sprite_width
	buther_knife.image_yscale=(sprite_height/2)/buther_knife.sprite_height
	buther_knife.alarm[0]=game_get_speed(gamespeed_fps)/2
	}


}
