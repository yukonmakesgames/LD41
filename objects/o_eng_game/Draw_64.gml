/// @description GUI

if(global.game_state == "game")
{
	for(var i = 0; i < global.player_status_hp_max; i++)
	{
		var full = false;
		
		if(global.player_status_hp - 1 >= i)
		{
			full = true;	
		}
		
		draw_sprite(s_ui_hp, full, 4 + ((sprite_get_width(s_ui_hp) * 1.5) * i), 4);
	}
}