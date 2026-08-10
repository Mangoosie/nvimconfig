{ ... }:
{
  imports = [
    ./neovim.nix
    ./git.nix
    ./ssh.nix
    ./kitty.nix
  ];

  home.stateVersion = "26.11";
}
