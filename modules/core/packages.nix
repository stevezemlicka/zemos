{pkgs, ...}: {
  programs = {
    firefox.enable = false;
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    virt-manager.enable = true;
    mtr.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    appimage-run
    brave
    brightnessctl
    cmatrix
    davinci-resolve-studio
    docker-compose
    duf
    eza
    ffmpeg
    file-roller
    gedit
    gimp
    google-chrome
    greetd.tuigreet
    htop
    hyprpicker
    imv
    inxi
    killall
    libnotify
    libreoffice
    libvirt
    lm_sensors
    lolcat
    lshw
    lxqt.lxqt-policykit
    meson
    mpv
    musescore
    ncdu
    ninja
    nextcloud-client
    nixfmt-rfc-style
    pavucontrol
    pciutils
    pkg-config
    playerctl
    qemu
    reaper
    ripgrep
    socat
    tree
    unrar
    unzip
    usbutils
    v4l-utils
    virt-manager
    virt-viewer
    wget
    xfce.xfce4-terminal
  ];
}
