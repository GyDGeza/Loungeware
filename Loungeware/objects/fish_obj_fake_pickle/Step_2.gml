
if(place_meeting(x, y, fish_obj_herbert))
{

	fish_obj_herbert.disable_movement = true
	target_acquired = true
	
	with(fish_obj_trail_particle)
	{
		fading = true
	}
}