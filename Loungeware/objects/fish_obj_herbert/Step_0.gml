
//MOVING
var lr_move = KEY_RIGHT - KEY_LEFT
var ud_move = KEY_DOWN - KEY_UP
var adjust_diagonal = lr_move != 0 && ud_move != 0
if(!disable_movement)
{
	x += lr_move * (adjust_diagonal ? move_speed / sqrt(2) : move_speed)
	y += ud_move * (adjust_diagonal ? move_speed / sqrt(2) : move_speed)
}
x = clamp(x, room_border, room_width - room_border)
y = clamp(y, room_border, room_height - room_border)
if(lr_move != 0) image_xscale = lr_move

//COLLIDING
if(!push_away_from(fish_obj_wall, move_speed))
{
	prev_pos = [x, y]
}

if(i_have_pickle)
{
	sprite_index = fish_spr_herbert_eat
}
else
{	
	if(lr_move != 0 || ud_move != 0)
	{
		sprite_index = fish_spr_herbert_walk
	}
	else
	{
		sprite_index = fish_spr_herbert
	}
}

//MOVING CAMERA
var goal_cam_pos =
[
	clamp(x - (VIEW_W / 2), 0, room_width -	VIEW_W),
	clamp(y - (VIEW_H / 2), 0, room_height - VIEW_H),
]
camera_set_view_pos(CAMERA, lerp(VIEW_X, goal_cam_pos[0], cam_lerp), lerp(VIEW_Y, goal_cam_pos[1], cam_lerp))

//SNIFFING
if(!i_have_pickle && !audio_is_playing(fish_sniff) && irandom(30) == 0)
{
	sfx_play(fish_sniff, 9, false)
}