/// @description Actions.



event_inherited();

#region //________________________________________________ Movement.

#region //-------------------------------- Slowdown.

#region //================ Generate.

spd_slow = 1 - (floor(((spd * 100) / spd_max)*10)/1000);

#endregion



#region //================ Apply.

spd_h = round(spd_h * spd_slow);
spd_v = round(spd_v * spd_slow);

#endregion

#endregion

#endregion



#region //________________________________________________ Depth.

depth = -y;

#endregion