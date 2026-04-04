/// @description HERE

if (active) {
	image_xscale -= scale_speed;
	image_yscale = image_xscale;
	image_angle += image_angle_speed;
	if (image_xscale <= 0) {
		instance_destroy();	
	}
}




