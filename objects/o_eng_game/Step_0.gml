/// @description Actions.



#region //________________________________________________ Resize Window.

if(window_get_height() != SCREEN_HEIGHT * global.resolution_zoom && window_get_width() != SCREEN_WIDTH * global.resolution_zoom && !window_get_fullscreen())
{
    window_set_size(SCREEN_WIDTH * global.resolution_zoom, SCREEN_HEIGHT * global.resolution_zoom);
    surface_resize(application_surface, SCREEN_WIDTH, SCREEN_HEIGHT);
    display_reset(0, false);
}

#endregion