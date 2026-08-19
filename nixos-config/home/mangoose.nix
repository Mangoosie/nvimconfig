{ ... }:
{
  imports = [
    ./neovim.nix
    ./git.nix
    ./ssh.nix
    ./kitty.nix
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  home.stateVersion = "26.11";
}
