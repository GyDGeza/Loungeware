
core_rot += rot_speed

image_xscale = 1 + lengthdir_x(scale_warp, core_rot)
image_yscale = image_xscale

if(fading)
{
	image_alpha -= fade_speed
	if(image_alpha <= 0)
	{
		instance_destroy()
	}
}