
//Create Prompts
if deliver and !moving
{
	//Set To Moving
	if KEY_RIGHT
	{
		moving = true;
	}
	
	//Reduce Prompt Time
	promptTime --;
	
	//Start Alarm
	if promptTime <= 0 and !alarm[0] and promptAmount == 0
	{
		alarm[0] = 1;
	}
}
