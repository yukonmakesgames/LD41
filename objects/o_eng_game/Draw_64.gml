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
	
	var eng_x = 4;
	var eng_y = 8 + sprite_get_height(s_ui_hp);
	
	draw_sprite(s_ui_eng, 0, eng_x, eng_y);
	draw_sprite_ext(s_ui_eng, 1, eng_x, eng_y, global.player_status_eng/global.player_status_eng_max, 1, 0, c_white, 1);
}