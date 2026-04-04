
if(!shit_spawned)
{
	shit_spawned = true
	
	camera_set_view_pos(CAMERA, x - (VIEW_W / 2), y - (VIEW_H / 2))

	instance_create_layer(x, y, "Instances", fish_obj_path_maker)
	instance_create_layer(x, y, "Instances", fish_obj_pickle)
	
	if(DIFFICULTY > 2)
	{
		repeat(1 + (DIFFICULTY > 3))
		{
			repeat(irandom_range(4, 6))
			{
				var wall_border = 96
				instance_create_layer(random_range(wall_border, room_width - wall_border), random_range(wall_border, room_height - wall_border), "Instances", fish_obj_wall)
			}
		}
	}
}