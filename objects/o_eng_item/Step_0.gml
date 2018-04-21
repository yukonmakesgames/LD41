/// @description Actions.



event_inherited();

#region //________________________________________________ Hide & Follow.

if(instance_exists(o_player))
{
	if(o_player.held_item == id)
	{
		visible = false;
		x = o_player.x;
		y = o_player.y;
	} else
	{
		visible = true;
		image_index = item;
	}
}

#endregion