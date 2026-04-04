//Get Input
var _keyPressed = KEY_PRIMARY_PRESSED or KEY_SECONDARY_PRESSED;

//Make Text Appear
if _keyPressed and shownWords < totalWords
{
	shownText += words[shownWords]+" ";
	shownWords ++;
}


//Done Typing
if shownWords >= totalWords and !done
{
	//Create Prompt
	instance_create_layer(781,250,"Prompts",zayzoon_mailit_oPrompt,{
		sprite_index : zayzoon_mailit_sPromptDeliver
	});
	
	//Manager
	zayzoon_mailit_oManager.deliver = true;
	
	//Destroy Idle Guy
	instance_destroy(zayzoon_mailit_oGuyIdle);
	
	//Sound
	sfx_play(zayzoon_mailit_snRun);
	
	//Done
	done = true;
}