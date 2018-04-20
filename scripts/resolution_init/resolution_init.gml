/// @description resolution_init



#region //________________________________________________ Macros.

#macro SCREEN_WIDTH 320
#macro SCREEN_HEIGHT 240

#endregion



#region //________________________________________________ Zoom. [zoom]


global.resolution_zoom = 3;

#endregion



#region //________________________________________________ Setup.

#region //-------------------------------- Port.

view_set_wport(0, SCREEN_WIDTH);
view_set_hport(0, SCREEN_HEIGHT);

#endregion



#region //-------------------------------- View.

camera_set_view_size(0, SCREEN_WIDTH, SCREEN_HEIGHT);

#endregion



#region //-------------------------------- GUI.

display_set_gui_size(SCREEN_WIDTH, SCREEN_HEIGHT);

#endregion

#endregion