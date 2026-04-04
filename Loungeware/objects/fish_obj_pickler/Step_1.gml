
if(!destroy_check)
{
	if(!instance_exists(host))
	{
		instance_destroy()
		exit
	}
	
	destroy_check = true
	//image_xscale = sign(host.x - x)
	if(instance_exists(target))
	{
		image_xscale = sign(target.x - x)
	}
	
	if(instance_exists(target) && point_distance(x, y, target.x, target.y) <= 64)
	{
		instance_destroy(host)
		instance_destroy()
		exit
	}
}
