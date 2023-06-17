function scr_attack_target_crypt_fiend() {
	if(object_index=obj_crypt_fiend)
	{
	var projectile=instance_create_depth(x,y,-4,obj_crypt_fiend_projectile)
	projectile.owner=id
	projectile.target=target
	projectile.speed=4
	}


}
