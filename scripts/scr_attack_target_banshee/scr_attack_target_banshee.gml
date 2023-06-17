// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_target_banshee(){

	if(object_index=obj_banshee)
	{
	magic_ball=instance_create_depth(x,y,-4,obj_magic_projectile)
	magic_ball.sprite_index=spr_banshee_magic_projectile
	//magic_ball.image_blend=c_white
	magic_ball.image_angle=point_direction(x,y,target.x,target.y)
	magic_ball.owner=id
	//magic_ball.damage=damage
//	magic_ball.element=element
	magic_ball.direction=point_direction(x,y,target.x,target.y)
	magic_ball.speed=4
	magic_ball.target_tile=target.tile
	//magic_ball.accuracy=accuracy
	magic_ball.altitude=target.altitude
	
}
}