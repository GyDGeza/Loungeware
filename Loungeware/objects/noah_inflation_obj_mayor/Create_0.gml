
button_press_goal = 5 + 2 * DIFFICULTY; // 15 good top difficulty, but too easy at 0
button_press_count = 0
number_of_clicks_text = "0/" + string(button_press_goal);

// Variables for updating his look
button_press_change_tracker = 0;


// Controls swapping his sprites as he grows
percentage_complete = button_press_count / button_press_goal;
number_of_times_he_changed = 0;
list_of_sprites = [
	noah_inflation_spr_mayor_2, 
	noah_inflation_spr_mayor_3, 
	noah_inflation_spr_mayor_4
]
number_of_sprites = array_length(list_of_sprites)
percentage_until_sprite_change = 1 / number_of_sprites;

// Idle animation values
x_scale_change = 0.25;
y_scale_change = 0.2;
default_scale = 1;
scale_timer = 0;
idle_loop_duration = 0.35;
idle_animation_speed = 1 / (60 * idle_loop_duration);


var _spriteHeight1 = sprite_get_height(noah_inflation_spr_mayor_1);
var _spriteHeight2 = sprite_get_height(noah_inflation_spr_mayor_2);
var _spriteHeight3 = sprite_get_height(noah_inflation_spr_mayor_3);
var _spriteHeight4 = sprite_get_height(noah_inflation_spr_mayor_4);
// Scaling as you progress
list_of_grow_scale_components = [
	_spriteHeight2 / _spriteHeight1 - 1 - 0.05,
	_spriteHeight3 / _spriteHeight2 - 1 - 0.2,
	_spriteHeight4 / _spriteHeight3 - 1,
	0,
]
grow_scale_component = list_of_grow_scale_components[0];
scale = 1;
current_milestone_completion = 0; 
milestone_increment = 1 / number_of_sprites;


microgame_won = false;
grunt = -1;

var _shakeDur = 1;
shake_timer_speed = 1 / (60 * _shakeDur)
shaking = false;
shake_magnitude = 30;
original_x = x;
original_y = y;
shake_timer = 0;





