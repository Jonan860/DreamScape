// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_target_carrion_beetle() {
	if(object_index=obj_carrion_beetle)
	{
			scr_attack_hp_reduction(id,target)
	var horn=instance_create_depth((x+target.x)/2,(y+target.y)/2,-10,obj_horn_attack)
	horn.image_angle=90+point_direction(x,y,target.x,target.y)
	horn.image_xscale=(sprite_width/2)/horn.sprite_width
	horn.image_yscale=(sprite_height/2)/horn.sprite_height
	horn.alarm[0]=room_speed/2
	}
}