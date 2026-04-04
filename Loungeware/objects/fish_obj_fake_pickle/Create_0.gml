
if(point_distance(x, y, fish_obj_herbert.x, fish_obj_herbert.y) <= 64)
{
	instance_destroy()
	exit
}

target = fish_obj_herbert
var spawn_dist = VIEW_W * .6
host = instance_create_layer(x + lengthdir_x(spawn_dist, direction), y + lengthdir_y(spawn_dist, direction), "Instances", fish_obj_pickler)
host.host = id
grapple_speed = 4
target_acquired = false