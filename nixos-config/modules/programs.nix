{ ... }:
{
  programs.firefox.enable = true;
  programs.steam.enable = true;

  programs._1password.enable = true;
  programs._1password-gui = {
    enable = true;
    polkitPolicyOwners = [ "mangoose" ];
  };

  # Root editor
  environment.variables.EDITOR = "nvim";
  environment.variables.VISUAL = "nvim";
  security.sudo.extraConfig = ''
    Defaults env_keep += "EDITOR VISUAL"
  '';
}
