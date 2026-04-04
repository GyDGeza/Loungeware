
move_speed = 2
cam_lerp = .2
room_border = 32
prev_pos = [x, y]

disable_movement = false
i_have_pickle = false

x = room_width / 2
y = room_height / 2

shit_spawned = false
//camera_set_view_pos(CAMERA, x - (VIEW_W / 2), y - (VIEW_H / 2))

//instance_create_layer(x, y, "Instances", fish_obj_path_maker)
//instance_create_layer(x, y, "Instances", fish_obj_pickle)

//if(DIFFICULTY > 2)
//{
//	repeat(1 + (DIFFICULTY > 3))
//	{
//		repeat(irandom_range(4, 6))
//		{
//			var wall_border = 96
//			instance_create_layer(random_range(wall_border, room_width - wall_border), random_range(wall_border, room_height - wall_border), "Instances", fish_obj_wall)
//		}
//	}
//}


push_away_from = function(object, intensity = 1, max_checks = 100)
{
	var hit_something = false
	var safety_count = 0
	while(instance_place(x, y, object) && safety_count < max_checks)
	{
		hit_something = true
		safety_count += 1
		
		var collider = instance_place(x, y, object)
		
		var coll_dir = point_direction(x, y, collider.x, collider.y)
		
		var x_dir = lengthdir_x(intensity, coll_dir)
		var y_dir = lengthdir_y(intensity, coll_dir)
		
		x -= x_dir * 2
		y -= y_dir * 2
	}
	
	return hit_something
}
