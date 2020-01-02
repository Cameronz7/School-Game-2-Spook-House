
//https://www.yoyogames.com/blog/476/quick-and-simple-lighting

if !surface_exists(surf)
    {
    var _cw = camera_get_view_width(view_camera[0]);
    var _ch = camera_get_view_height(view_camera[0]);
    surf = surface_create(_cw, _ch);
    surface_set_target(surf);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw, _cw, false);
    surface_reset_target();
    }
	else
	{
	if (surface_exists(surf)) {
		var _cw = camera_get_view_width(view_camera[0]);
		var _ch = camera_get_view_height(view_camera[0]);
		var _cx = camera_get_view_x(view_camera[0]);
		var _cy = camera_get_view_y(view_camera[0]);
		surface_set_target(surf);
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(0, 0, _cw, _ch, 0);
		gpu_set_blendmode(bm_subtract);
		with (obj_light_parent)
		    {
				var _sw = sprite_width / 2;
				var _sh = sprite_height / 2;
				switch(object_index)
				{
				
				case obj_enemy1:
				 draw_sprite_ext(light_sphere, 0, x + _sw - _cx - 170, y + _sh - _cy - 170, 1.25, 1.25, 0, c_white, 1);
				    break;
				case obj_enemy2:
				 draw_sprite_ext(light_sphere, 0, x + _sw - _cx - 250, y + _sh - _cy - 250, 1.25, 1.25, 0, c_white, 1);
				    break;
				case obj_enemy3:
				    draw_sprite_ext(light_sphere, 0, x + _sw - _cx - 220, y + _sh - _cy - 280, 1.25, 1.25, 0, c_white, 1);
					
				    break;
				case obj_enemy_chaser:
				    draw_sprite_ext(light_sphere, 0, x + _sw - _cx - 300, y + _sh - _cy - 300, 1.25, 1.25, 0, c_white, 1);
					
				    break;
				case obj_enemy1_fly:
				     draw_sprite_ext(light_sphere, 0, x + _sw - _cx - 170, y + _sh - _cy - 170, 1.25, 1.25, 0, c_white, 1);
					
				    break;
				case obj_enemy23_fly:
				    draw_sprite_ext(light_sphere, 0, x + _sw - _cx - 220, y + _sh - _cy - 280, 1.25, 1.25, 0, c_white, 1);
					
				    break;
				case obj_player:
					
				    draw_sprite_ext(light_sphere, 0, x - _cx, y - _sh - _cy + 160, 1, 1, 0, c_white, 1);            
				    break;
				}

		    }
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
		draw_surface(surf, _cx, _cy);
	}
}