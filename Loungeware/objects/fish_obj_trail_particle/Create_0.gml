image_alpha = .5
image_index = irandom(image_number - 1)
image_angle = random(360)
core_rot = 0
rot_speed = -360 / 90
scale_warp = .1

fading = false
fade_speed = 1 / 90

if(DIFFICULTY > 3 && instance_number(object_index) > 2 && irandom(50 / (1 + (DIFFICULTY >= 5))) == 0)
{
	var rand_dist = 32
	var rand_dir = random(360)
	
	var tp_dist = 10000
	x += tp_dist
	y += tp_dist
	var nearest_cloud = instance_nearest(x - tp_dist, y - tp_dist, object_index)
	x -= tp_dist
	y -= tp_dist
	instance_create_layer(x + lengthdir_x(rand_dist, rand_dir), y + lengthdir_y(rand_dist, rand_dir), "Instances", fish_obj_fake_pickle, {direction : point_direction(x, y, nearest_cloud.x, nearest_cloud.y) + choose(90, -90)})
}