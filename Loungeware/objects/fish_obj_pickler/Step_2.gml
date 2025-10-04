
if(!guy_eaten && instance_exists(target))
{
	image_xscale = sign(target.x - x)
}

if(destroy_check && !guy_eaten && instance_exists(target) && point_distance(x, y, target.x, target.y) <= 32)
{
	guy_eaten = true
	sprite_index = fish_spr_pickler_eat
	image_index = 0
	instance_destroy(host)
	instance_destroy(fish_obj_herbert)
	sfx_play(fish_chomp_bite_pickle_fun, 1, false, 0.3)
}
