
if(target_acquired)
{
	var host_dir = point_direction(x, y, host.x, host.y)
	x += lengthdir_x(grapple_speed, host_dir)
	y += lengthdir_y(grapple_speed, host_dir)
	if(instance_exists(fish_obj_herbert))
	{
		fish_obj_herbert.x = x
		fish_obj_herbert.y = y
	}
}