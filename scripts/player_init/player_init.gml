/// @description player_init



#region //________________________________________________ Status. [status]

#region //-------------------------------- Health. [hp]

global.player_status_hp_max = 3;
global.player_status_hp = 0;

global.player_status_hp_stunned = false;

global.player_status_hp_dead = false; 

#endregion

#endregion

player_heal();