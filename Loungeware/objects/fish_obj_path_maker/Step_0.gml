
repeat(increment_amount)
{
	if(increments_taken >= difficulty_wander_times[clamp(DIFFICULTY, 0, array_length(difficulty_wander_times) - 1)] * 60 / move_speed)
	{
		navigate(point_direction(x, y, target.x, target.y), obstacles, 45, 4)
		
		if(increments_taken >= difficulty_wander_times[clamp(DIFFICULTY, 0, array_length(difficulty_wander_times) - 1)] * 60 * 2 / move_speed)
		{
			if(point_distance(x, y, fish_obj_herbert.x, fish_obj_herbert.y) > 150)
			{
				fish_obj_pickle.x = x
				fish_obj_pickle.y = y
			}
			else
			{
				direction = point_direction(x, y, target.x, target.y)
			}
		}
	}
	else
	{
		var wackyness = 10
		direction += random_range(-wackyness, wackyness)
		navigate(point_distance(x, y, fish_obj_pickle.x, fish_obj_pickle.y) <= room_width / 4 ? direction + (sign(angle_difference(direction, point_direction(x, y, fish_obj_pickle.x, fish_obj_pickle.y))) * 20) : direction, obstacles, 45, 4)
	}
	x += lengthdir_x(move_speed, direction)
	y += lengthdir_y(move_speed, direction)
	x = clamp(x, room_border, room_width - room_border)
	y = clamp(y, room_border, room_height - room_border)
	
	var waller = collision_point(x, y, fish_obj_wall, true, true)
	if(waller != noone)
	{
		instance_destroy(waller)
	}
	
	if(point_distance(x, y, fish_obj_pickle.x, fish_obj_pickle.y) <= 16)
	{
		instance_destroy()
		break
	}
	
	trail_counter += move_speed
	if(trail_counter >= trail_separation)
	{
		trail_counter = 0
		var trail_spawn = instance_create_layer(x, y, "Instances", fish_obj_trail_particle)
		trail_spawn.core_rot = core_rot
		core_rot += rot_diff
	}
	increments_taken++
}

core_rot += rot_speed