
if(destroy_check)
{
	var draw_offset = -1
	if(instance_exists(host))
	{
		draw_set_color(0x25C8FF)
		draw_line_width((x - sprite_xoffset) + (line_point[0] * image_xscale) + draw_offset, (y - sprite_yoffset) + (line_point[1] * image_yscale) + draw_offset, host.x + draw_offset, host.y + draw_offset, 2)
		draw_set_color(c_white)
	
		with(host)
		{
			draw_self()
		}
	}

	draw_self()
}