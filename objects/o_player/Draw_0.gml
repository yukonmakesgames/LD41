/// @description Item.



if(held_item != noone)
{
	if(held_item.item == 0)
	{
		if(!instance_exists(o_player_sword))
		{
			draw_sprite_ext(s_player_sword, 0, x, y, image_xscale, 1, 0, c_white, 1);
		}
	}
}

// Inherit the parent event
event_inherited();

if(held_item != noone)
{
	if(held_item.item != 0)
	{
		draw_sprite_ext(s_items, held_item.item, x, y - 16, 1, 1, 0, c_white, 1);
	}
}