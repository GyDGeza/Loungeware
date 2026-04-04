
//if(irandom(5) != 0)
//{
//	instance_destroy()
//	exit
//}


target = fish_obj_herbert
target_dir = 0
obstacles = fish_obj_wall

move_speed = 1.05
scare_dist = 65
scared = false

room_border = 32

x = random_range(room_border, room_width - room_border)
y = random_range(room_border, room_height - room_border)

if(point_distance(x, y, room_width / 2, room_height / 2) <= 150)
{
	var rand_dir = random(360)
	x += lengthdir_x(100, rand_dir)
	y += lengthdir_y(100, rand_dir)
}

direction = random(360)

navigate = function(move_direction, obstacle, sense_length, rotation_speed = 3, sense_detail = 6, sense_spread = 120, nav_speed_multiplier = 1, x_pos = x, y_pos = y)
{
	//navigating
	if(abs(angle_difference(direction, move_direction)) <= rotation_speed * nav_speed_multiplier)
	{
		direction = move_direction
	}
	else
	{
		direction += rotation_speed * nav_speed_multiplier * -sign(angle_difference(direction, move_direction))
	}
	
	//var nearest_obst = noone//instance_nearest(x_pos, y_pos, obstacle)
	//if(is_array(nearest_obst))
	//{
	//	for(var i = 0; i < array_length(nearest_obst); i++)
	//}
	
	//if(nearest_obst != noone) //&& point_distance(x_pos, y_pos, nearest_obst.x, nearest_obst.y) <= sense_length * 1.5)
	{
		//sensing surroundings
		var sense_count = 0
		var sense_smallest = .75
		var lr_total = 0
	
		for(var i = 0; i < sense_detail; i++)
		{
			var beam_length = (((1 - (abs(i - ((sense_detail / 2) - .5)) / (sense_detail / 2))) * (1 - sense_smallest)) + sense_smallest) * sense_length	
			var sense_point = [x_pos + lengthdir_x(beam_length, direction - (sense_spread / 2) + ((sense_spread / (sense_detail - 1)) * i)), y_pos + lengthdir_y(beam_length, direction - (sense_spread / 2) + ((sense_spread / (sense_detail - 1)) * i))]
			
			if(collision_line(x_pos, y_pos, sense_point[0], sense_point[1], obstacle, true, true) != noone)
			{
				var left_or_right = sign((i + 1) - (sense_detail / 2))
				if(left_or_right == 0)
				{
					left_or_right = -1
				}
				lr_total += left_or_right
			
				direction -= rotation_speed * left_or_right * (6 / sense_detail)
				sense_count++
			}
		}
	
		direction += sign(lr_total) * .2
		
		if(sense_count >= sense_detail)
		{
			//direction -= 180
			//direction += zeroless_sign(angle_difference(direction, move_direction), 1) * 5 * ALT_TIME
		}
		
		return sense_count
	}
	
	return 0
}