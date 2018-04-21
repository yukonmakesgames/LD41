/// @description Item.



if(held_item != noone)
{
	if(held_item.item == "sword")
	{
		if(!instance_exists(o_player_sword))
		{
			draw_sprite_ext(s_player_sword, 0, x, y, image_xscale, 1, 0, c_white, 1);
		}
	}
}

// Inherit the parent event
event_inherited();

