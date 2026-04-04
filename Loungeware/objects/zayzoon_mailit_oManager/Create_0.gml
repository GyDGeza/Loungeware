//Welcome Sound
sfx_play(zayzoon_mailit_snWelcome);

//Get Song
var _song = zayzoon_mailit_song;
if DIFFICULTY >= 4
{
	_song = zayzoon_mailit_songHard;
}

//Play Song
microgame_music_start(_song,1,true);

//Deliver Promp Time
deliver = false;
moving = false;
promptTime = 80;

//Prompt Amount
promptAmount = 0;
promptMax = 10;