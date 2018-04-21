/// @description Movement.



event_inherited();

#region //________________________________________________ Input. [input]

var input_left = keyboard_check(global.keybind_keyboard_movement_left);
var input_right = keyboard_check(global.keybind_keyboard_movement_right);
var input_up = keyboard_check(global.keybind_keyboard_movement_up);
var input_down = keyboard_check(global.keybind_keyboard_movement_down);

#endregion



#region //________________________________________________ Movement.

#region //-------------------------------- Controls.

spd_h_move = input_right - input_left;
spd_v_move = input_down - input_up;

move = input_right + input_left + input_down + input_up;

#endregion



#region //-------------------------------- Direction.

move_dir = point_direction(0, 0, 0 + spd_h_move, 0 + spd_v_move);

#endregion



#region //-------------------------------- Move.

if(move_control)
{
	if(move > 0)
	{
	    if (!(move > 1 && move_dir == 0))
	    {
			spd_h += (dcos(move_dir) * move_spd);
		    spd_v += (-dsin(move_dir) * move_spd);

	    }
	}
}

#endregion

#endregion