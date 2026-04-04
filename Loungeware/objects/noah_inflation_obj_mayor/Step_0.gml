if (noah_inflation_obj_pump.is_up) { // the pump is up
	if (KEY_DOWN_PRESSED) {
		sfx_play(noah_inflation_sfx_pump_down, 1, false);
		button_press_count ++;
		noah_inflation_obj_pump.is_up = false;
		percentage_complete = button_press_count / button_press_goal;
		number_of_clicks_text = string(button_press_count)
		number_of_clicks_text += "/" + string(button_press_goal)
	}
} else { // the pump is down
	if (KEY_UP_PRESSED) {
		sfx_play(noah_inflation_sfx_pump_up, 1, false);
		noah_inflation_obj_pump.is_up = true;
	}
}

// check if we won
if (!microgame_won and button_press_count == button_press_goal) {
	microgame_won = true
	shaking = true;
	sfx_play(noah_inflation_sfx_fanfare);
	sfx_play(noah_inflation_sfx_rip);
	with(noah_inflation_par_parts) {
		activate();	
	}
	noah_inflation_obj_prompt.move = true;
	noah_inflation_obj_prompt_arrows.move = true;
	microgame_win()
}

// scale him up depending on how close to completion 
if (percentage_complete >= percentage_until_sprite_change and number_of_times_he_changed < number_of_sprites) {
	
	// Get next sprite
	sprite_index = list_of_sprites[number_of_times_he_changed]
	button_press_change_tracker = 0
	number_of_times_he_changed++
	// Play sound depending on stage of completion
	switch(number_of_times_he_changed) {
		case (1):
			var _initialSnd = choose(noah_inflation_sfx_mayor_0, noah_inflation_sfx_mayor_0);
			grunt = sfx_play(_initialSnd);
		break;
		case (2):
			if (audio_is_playing(grunt)) {sfx_stop(grunt)}
			grunt = sfx_play(noah_inflation_sfx_near_complete, 1, false);
		break;
		case (3):
			if (audio_is_playing(grunt)) {sfx_stop(grunt)}
			var _completeSnd = choose(noah_inflation_sfx_complete_0, noah_inflation_sfx_complete_1);
			grunt = sfx_play(_completeSnd);
		break;

	}
	grow_scale_component = list_of_grow_scale_components[number_of_times_he_changed];
	// Update our percent goal
	percentage_until_sprite_change = (number_of_times_he_changed + 1) / number_of_sprites;
}

// scale based on current milestone completion
current_milestone_completion = (percentage_complete - milestone_increment * (number_of_times_he_changed)) / milestone_increment;
scale = 1 + grow_scale_component * current_milestone_completion;





// Run the idle animation timer
scale_timer += idle_animation_speed;
if (scale_timer >= 1 or scale_timer <= 0) {
	idle_animation_speed *= -1
}
// Do the idle animation with xscale and yscale
image_xscale = scale + scale_timer * x_scale_change;
image_yscale = scale - scale_timer * y_scale_change;

if (shaking) {
	x = original_x + (1 - shake_timer)*random(shake_magnitude);	
	y = original_y + random(shake_magnitude);	
	shake_timer += shake_timer_speed;
	if (shake_timer >= 1) {
		shaking = false;	
	}
}

