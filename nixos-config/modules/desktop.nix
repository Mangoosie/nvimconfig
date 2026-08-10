{ ... }:
{
  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  services.flatpak.enable = true;
  services.printing.enable = true;
  services.libinput.enable = true;
}
