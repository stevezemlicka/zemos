{ pkgs, host, options, ... }:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    timeServers = options.networking.timeServers.default ++ [ "pool.ntp.org" ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        59010
        59011
      ];
      allowedUDPPorts = [
        59010
        59011
      ];
    };
  };
  #fileSystems."/mnt/general" = {
  #  device = "172.23.1.3:/mnt/lh01/general";
  #  options = [ "x-systemd.automount" "rw" "timeo=14" "intr" "async" ];
  #};
  #fileSystems."/mnt/media" = {
  #  device = "172.23.1.3:/mnt/lh01/media";
  #  options = [ "x-systemd.automount" "rw" "timeo=14" "intr" "async" ];
  #};
  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}
