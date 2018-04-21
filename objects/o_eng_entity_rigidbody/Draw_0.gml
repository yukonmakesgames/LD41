/// @description Me.



if(sprite_exists(sprite_index))
{
	if (spd_grounded)
	{
		draw_sprite_ext(sprite_index, image_index, round(x), round(y + ((sprite_height/2) - (sprite_height/2) * scale_y) * 0.25), image_xscale * scale_x, scale_y, image_angle, image_blend, image_alpha);    
	} else
	{
		draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale * scale_x, scale_y, image_angle, image_blend, image_alpha);	
	}
}
