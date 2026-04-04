timer = 0;
period_duration = 0.5
timer_speed = 1 / (60 * period_duration);
base_scale = 1;
scale = base_scale;
scale_grow_max = 0.2;

instance_create_depth(x, y, depth - 1, noah_inflation_obj_prompt_arrows);

move = false;