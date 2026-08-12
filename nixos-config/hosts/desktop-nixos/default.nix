{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/boot.nix
    ../../modules/networking.nix
    ../../modules/locale.nix
    ../../modules/desktop.nix
    ../../modules/audio.nix
    ../../modules/hardware.nix
    ../../modules/users.nix
    ../../modules/programs.nix
    ../../modules/packages.nix
    ../../modules/nix-ld.nix
	../../modules/npm.nix
  ];

  networking.hostName = "nixos";
  system.stateVersion = "26.11";
  nixpkgs.config.allowUnfree = true;

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.mangoose = import ../../home/mangoose.nix;
}
