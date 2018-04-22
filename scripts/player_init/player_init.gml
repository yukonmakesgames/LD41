/// @description player_init



#region //________________________________________________ Status. [status]

#region //-------------------------------- Health. [hp]

global.player_status_hp_max = 3;
global.player_status_hp = 0;

global.player_status_hp_stunned = false;

global.player_status_hp_dead = false; 

#endregion



#region //-------------------------------- Energy. [eng]

global.player_status_eng = 0;
global.player_status_eng_max = 12;

#endregion

#endregion

player_heal();