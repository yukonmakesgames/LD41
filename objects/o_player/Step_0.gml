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

move_h = input_right - input_left;
move_v = input_down - input_up;

move = input_right + input_left + input_down + input_up;

#endregion



#region //-------------------------------- Locking.

if(instance_exists(o_player_sword))
{
	move_control = false;
} else
{
	move_control = true;	
}

#endregion



#region //-------------------------------- Direction.

move_dir = point_direction(0, 0, 0 + move_h, 0 + move_v);

#endregion



#region //-------------------------------- Move.

if(move_control)
{
	if(move > 0)
	{
	    if (!(move > 1 && move_dir == 0))
	    {
			spd_h += (dcos(move_dir) * spd);
		    spd_v += (-dsin(move_dir) * spd);
	    }
	}
}

#endregion

#endregion



#region //________________________________________________ Inventory.

#region //-------------------------------- Pickup/Put down.

if(held_item == noone)
{
	var item_touched = instance_place(x, y, o_eng_item);
	
	if(item_touched != noone)
	{
		if(keyboard_check_pressed(global.keybind_keyboard_action_interact))
		{
			held_item = item_touched;	
		}
	}
} else
{
	if(keyboard_check_pressed(global.keybind_keyboard_action_interact))
	{
		if(global.items[held_item.item, 1])
		{
			held_item.image_angle = choose(0, 90, 180, 270);
		}
		
		held_item = noone;
		
	}
}

#endregion



#region //-------------------------------- Aim.

if(sprite_index == s_player_move)
{
	if(abs(spd_v) > abs(spd_h))
	{
		if(sign(spd_v) == 1)
		{
			attack_dir = 270;
		} else
		{
			attack_dir = 90;
		}
	} else
	{
		if(sign(spd_h) == 1)
		{
			attack_dir = 0;
		} else
		{
			attack_dir = 180;
		}
	}
}

#endregion



#region //-------------------------------- Use.

if(held_item != noone && instance_exists(held_item))
{
	if(!instance_exists(o_player_sword))
	{
		if(keyboard_check_pressed(global.keybind_keyboard_action_use))
		{		
			if(held_item.item == 0)
			{
				var attack = instance_create_depth(x + lengthdir_x(attack_distance, attack_dir), y + attack_offset_y + lengthdir_y(attack_distance, attack_dir), depth, o_player_sword);
				attack.image_angle = attack_dir;
				attack.spd_h = lengthdir_x(attack.spd_max, attack_dir);
				attack.spd_v = lengthdir_y(attack.spd_max, attack_dir);
			} else
			{
				if(global.items[held_item.item, 2])
				{
					plants_create(x, y, global.items[held_item.item, 3]);
					instance_destroy(held_item);
					held_item = noone;
				}
			}
		}
	}
}

#endregion

#endregion



#region //________________________________________________ Animation.

if(!global.player_status_hp_dead)
{
	if(abs(spd_h) < 0.1 && abs(spd_v) < 0.1 )
	{
		sprite_index = s_player_idle;	
	} else
	{
		sprite_index = s_player_move;
		
		if(spd_h < 0)
		{
			image_xscale = -1;	
		} else if(spd_h > 0)
		{
			image_xscale = 1;
		}
	}
} else
{
	sprite_index = s_player_dead;	
}

#endregion