{ config, pkgs, ... }:

{
  # services.xserver.desktopManager.gnome.enable = true;
  environment.systemPackages = with pkgs; [
    hyprlock
    grim
    slurp
    fuzzel
    ashell
    pavucontrol
    gnome-characters
    libnotify
    handbrake

    gh rsync
    nushell fish
    gitui lazygit
    # [music-player] // termusic rmpc ncmpcpp cmus
    # [fetch] // fastfetch, inxi, neofetch, freshfetch,
    # [system-monitor] // htop, gnome-system-monitor,
    # [file-manager] // kdePackages.dolphin, xfce.thunar,
    # [disk-manager] // gparted, kdePackages.partitionmanager, mmtui,
    # [browser] // firefox, chromium, torbrowser, *opera,
    # [theme-picker] // nwg-look, libsForQt5.qt5ct,
    duf baobab ncdu
    metasploit mtr
    mpv # celluloid kdePackages.dragon
    loupe eog
    papers
    parabolic
    ytermusic
    yad

    # lshw cpu-x
    # audacity
    # amfora
    # appimage-run usbutils
    # socat
    # v4l-utils
    # nwg-displays
    # gnome-maps
    # steam
    # calls
    # lm_sensors
    # gnome-clocks
    # burpsuite
    # discord
    # youtube-music spotify
    # libreoffice wps

    # terminal
    cmatrix pipes pipes-rs figlet cowsay
  ];
  programs = {
    bash.shellAliases = {
      kmap = "eval $(sudo kmonad ~/dev/colemaxx.kbd)";
    };
  };
}
