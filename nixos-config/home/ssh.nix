{ ... }:
{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      host *
      IdentityAgent ~/.1password/agent.sock
    '';
  };
}
