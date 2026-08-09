{ pkgs, ... }:
{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    fontconfig
    freetype
    expat
    icu
    zlib
    openssl
    stdenv.cc.cc.lib
    libX11
    libICE
    libSM
    libXext
    libXrender
    libXi
    libXtst
    libXcursor
    libXrandr
    libXfixes
    libGL
    glib
    gtk3
  ];
}
