{ lib, pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      gpg.format = "ssh";
      "gpg \"ssh\"".program = "${lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
      user = {
        name = "Mangoosie";
        email = "magnus@hestefolden-6.dk";
      };
    };
  };
}
