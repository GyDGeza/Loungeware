
if(MICROGAME_WON && irandom(confetti_chance) == 0)
{
	var confetti = instance_create_layer(VIEW_X + random(VIEW_W), VIEW_Y - 5, "Instances", fish_obj_confetti_particle)
	confetti.direction = -90 + random_range(-10, 10)
}