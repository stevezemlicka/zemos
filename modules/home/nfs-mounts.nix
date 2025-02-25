{ ... }:
{
  fileSystems."/mnt/general" = {
    device = "172.23.1.3:/mnt/lh01/general";
    options = [ "x-systemd.automount" "rw" "timeo=14" "intr" "async" ];
  };
  fileSystems."/mnt/media" = {
    device = "172.23.1.3:/mnt/lh01/media";
    options = [ "x-systemd.automount" "rw" "timeo=14" "intr" "async" ];
  };
}
