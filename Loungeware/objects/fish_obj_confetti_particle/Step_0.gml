


if(lifespan > 0)
{
	lifespan -= 1
}
else
{
	if(image_alpha > 0)
	{
		image_alpha -= 1 / fade_time
	}
	else
	{
		instance_destroy()
	}
}