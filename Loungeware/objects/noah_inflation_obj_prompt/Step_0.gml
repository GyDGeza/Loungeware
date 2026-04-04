/// @description HERE


scale = base_scale + abs(scale_grow_max * dsin(timer * 360));
image_xscale = scale;
image_yscale = scale;

timer += timer_speed;
if (timer >= 1) {
	timer = 0;	
}



if (move) {
	x += 30;	
}

