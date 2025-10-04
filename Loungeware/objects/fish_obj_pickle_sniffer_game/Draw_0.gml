

var light_surf = surface_create(VIEW_W, VIEW_H)
surface_set_target(light_surf)
draw_clear_alpha(c_black, 1)
	
var glow_scale = lerp(1.5, .8, DIFFICULTY / 5)
gpu_set_blendmode(bm_subtract)
draw_sprite_ext(fish_spr_sniffer_light, 0, light_pos[0] - VIEW_X, light_pos[1] - VIEW_Y, glow_scale, glow_scale, 0, c_white, 1)
gpu_set_blendmode(bm_normal)
	
surface_reset_target()



draw_surface(light_surf, VIEW_X, VIEW_Y)
surface_free(light_surf)