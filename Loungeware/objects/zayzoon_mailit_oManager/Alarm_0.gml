/// @desc Create Run Prompt

//Get Position
randomize();
var _pos = {
	x:random_range(140,820),
	y:random_range(80,320),
};

//Create Prompt
instance_create_depth(_pos.x,_pos.y,-(promptAmount+1),zayzoon_mailit_oPrompt,{
	sprite_index : zayzoon_mailit_sPromptDeliver,
});

//Increase Prompt Amount
promptAmount ++;

//Repeat
if promptAmount < promptMax and !moving
{
	alarm[0] = random_range(30,60);
}



