// nullable fields may be omitted entirely
// if your game fails validatio, for example couldn't find room resource, 
// then your game will not be loaded. Check the Output in GMS2 when booting the game form
// warnings if your game is not loading

//see https://github.com/spacebake/Loungeware/wiki/Microgame-Config

microgame_register("gyd_string_pull", {
    config_version: 1,
    game_name: "String Pull",
    authors : "gyd",
    prompt: "PULL",
    init_room: gyd_string_pull_rm_game,
    view_width: 240,
    view_height: 160,
    time_seconds: 5,
    music_track: username_gamename_bgm_game, // nullable, defaults to noone. Accepts: sound name or false
    music_loops: true, // nullable, defaults to true
    interpolation_on: false,
    cartridge_col_primary: [0, 0, 0],
    cartridge_col_secondary: [55, 255, 255],
    cartridge_label: gyd_string_pull_spr_label,
    default_is_fail: true, // nullable, defaults to true
    supports_difficulty_scaling: true,
    credits: ["gyd"],
    date_added: {
		day: 17,
		month: 8,
		year: 2021
	},
	is_enabled: true,
	supports_html: true,
	supports_pi: true,
	show_on_website: true,
	description: [ "Make some string art!" ],
	how_to_play: [ "Pull the string around the pegs to create the indicated image" ],
});