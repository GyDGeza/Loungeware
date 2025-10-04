
var wackyness = 10
direction += random_range(-wackyness, wackyness)

if(instance_exists(target))
{
	target_dir = point_direction(x, y, target.x, target.y)
	
	if(!scared && point_distance(x, y, target.x, target.y) <= scare_dist)
	{
		scared = true
		sfx_play(fish_baby_noise)
	}
}

if(scared)
{
	speed = move_speed * 2
	navigate(target_dir - 180, obstacles, 45, 3)
}
else
{
	navigate(direction, obstacles, 45, 3)
	speed = move_speed
}