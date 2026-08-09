{ ... }:
{
  programs.kitty = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font";
      size = 13;
    };
    settings = {
      background_opacity = "0.8";
      scrollback_lines = 10000;
      enable_audio_bell = false;
      confirm_os_window_close = 0;
      mouse_hide_wait = "-1.0";
    };
    # themeFile = "Moonlight";
  };
}
