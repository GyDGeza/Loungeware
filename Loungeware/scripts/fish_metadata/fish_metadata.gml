
microgame_register("level_5_fish_pickle_sniffer", {
    config_version: 1,
    game_name: "Pickle Sniffer",
    authors : "Level 5 Fish",
    prompt: "SNIFF",
    init_room: fish_pickle_sniffer_room,
    view_width: 240,
    view_height: 160,
    time_seconds: 8,
    music_track: fish_pickle_song, // nullable, defaults to noone. Accepts: sound name or false
    music_loops: true, // nullable, defaults to true
    interpolation_on: false,
    cartridge_col_primary: #5ac54f,
    cartridge_col_secondary: #ca52c9,
    cartridge_label: fish_spr_pickle_sniffer_cover,
    default_is_fail: true, // nullable, defaults to true
    supports_difficulty_scaling: true,
    credits: ["Level 5 Fish", "DeadRatDev"],
    date_added:{
	  day : 22,
	  month : 9,
	  year : 2025
	},
	is_enabled: true,
	supports_html: true,
	show_on_website: true,
	description : ["Follow the scent trail to find the delectable pickle. Watch out for the Pickler!"],
	how_to_play : ["Use primary keys to move around. Follow the trail to find the pickle - you may need to find some shortcuts on higher difficulties."],
});