{ pkgs, inputs, ... }:
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
	inputs.nix-alien.packages.${pkgs.system}.nix-alien
    cargo
    rustc
    discord
  ];
}
