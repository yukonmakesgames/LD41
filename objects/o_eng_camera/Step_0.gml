/// @description Actions.



if(instance_exists(o_player))
{
	var target_x = floor(o_player.x/SCREEN_WIDTH) * SCREEN_WIDTH;
	var target_y = floor(o_player.y/SCREEN_HEIGHT) * SCREEN_HEIGHT;
}

x = lerp(x, target_x, 0.125);
y = lerp(y, target_y, 0.125);

camera_set_view_pos(view_camera[0], x, y)
