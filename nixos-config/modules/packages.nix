{ pkgs, ... }:
let
  nix-alien-pkgs = import (builtins.fetchTarball
    "https://github.com/thiagokokada/nix-alien/tarball/master") { };
in
{
  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    usbutils
    v4l-utils
    davinci-resolve
    vlc
    libreoffice
    vscode
    nodejs
    # Neovim dependencies
    unzip
    wget
    xclip  # X11; swap to wl-clipboard on wayland/hyprland
    ripgrep
    fd
    go
    typescript
    tree-sitter
    wl-clipboard
    neovim
    pdfstudioviewer
    nix-alien-pkgs.nix-alien
    cargo
    rustc
    discord
  ];
}
