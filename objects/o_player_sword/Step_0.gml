/// @description Die.



event_inherited();

if(abs(spd_v) < 0.01 && abs(spd_h) < 0.01)
{
	if(alarm[0] <= 0)
	{
		alarm[0] = sword_lag;	
	}
}