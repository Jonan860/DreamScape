function scr_attack_target_footman() {
	if(object_index=obj_footman)
	{
			scr_attack_hp_reduction(self,target)
	var sword=instance_create_depth((x+target.x)/2,(y+target.y)/2,-10,obj_sword_attack)
	sword.image_angle=point_direction(x,y,target.x,target.y)
	sword.image_xscale=(sprite_width/2)/sword.sprite_width
	sword.image_yscale=(sprite_height/2)/sword.sprite_height
	sword.alarm[0]=game_get_speed(gamespeed_fps)/2
	}


}
