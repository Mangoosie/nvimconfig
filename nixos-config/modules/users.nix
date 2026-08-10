{ pkgs, ... }:
{
  users.users.mangoose = {
    isNormalUser = true;
    description = "Mangoose";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      # thunderbird
    ];
  };
}
