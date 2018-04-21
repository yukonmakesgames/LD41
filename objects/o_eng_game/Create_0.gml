/// @description Init.



#region //________________________________________________ Setup.

#region //-------------------------------- Randomize.

randomize();

#endregion

#endregion



#region //________________________________________________ Initialization.

#region //-------------------------------- Game. [game]

game_init();

#endregion



#region //-------------------------------- Resolution. [resolution]

resolution_init();

#endregion



#region //-------------------------------- Keybind. [keybind]

keybind_init();

#endregion

#region //-------------------------------- Player. [player]

player_init();

#endregion

#endregion



#region //________________________________________________ Next.

room_goto_next();

global.game_state = "game";

#endregion