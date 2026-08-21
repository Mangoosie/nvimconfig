{ pkgs, ... }:
{
  # AMD graphics overclocking
  services.lact.enable = true;
  hardware.amdgpu.overdrive.enable = true;


  environment.sessionVariables.LIBVA_DRIVER_NAME = "iHD"; #For gpu accelerated video
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [ 
		intel-media-driver
		intel-compute-runtime
	];
  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # fingerprint - still doesn't work :(
  # services.fprintd.enable = true;
  # security.pam.services.login.fprintAuth = true;
  # security.pam.services.sudo.fprintAuth = true;
  # services.fprintd.tod.enable = true;
  # services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix;
}
