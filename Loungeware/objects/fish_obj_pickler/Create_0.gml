
host = noone
target = fish_obj_herbert
guy_eaten = false
room_border = 32

line_point = [39, 2]

x = clamp(x, room_border, room_width - room_border)
y = clamp(y, room_border, room_height - room_border)

destroy_check = false

var wall_here = instance_place(x, y, fish_obj_wall)
if(wall_here != noone)
{
	instance_destroy(wall_here)
}