
if(place_meeting(x, y, fish_obj_herbert))
{
	microgame_win()
	instance_destroy(fish_obj_path_maker)
	if(instance_exists(fish_obj_herbert) && !fish_obj_herbert.i_have_pickle)
	{
		fish_obj_herbert.i_have_pickle = true
		fish_obj_herbert.image_index = 0
		fish_obj_herbert.disable_movement = true
	}
	
	with(fish_obj_trail_particle)
	{
		fading = true
	}
	
	sfx_play(fish_chomp_bite_pickle_fun, 10, false)
	
	instance_destroy()
}