{ ... }:
{
  networking.networkmanager.enable = true;
  networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];
  networking.networkmanager.wifi.powersave = false;
  networking.enableIPv6 = false; 

  boot.kernel.sysctl = {
	"net.core.default_qdisc" = "fq";
	"net.ipv4.tcp_congestion_control" = "bbr";
	"net.core.rmem_max" = 67108864;
	"net.core.wmem_max" = 67108864;
	"net.ipv4.tcp_rmem" = "4096 87380 33554432";
	"net.ipv4.tcp_wmem" = "4096 65536 33554432";
  };

  services.dnsmasq = {
  enable = true;
  settings = {
    server = [ "1.1.1.1" "8.8.8.8" ];
    cache-size = 1000;
  	};
  };
}
