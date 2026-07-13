
#                                          ██████   █████  ███                
#                                         ▒▒██████ ▒▒███  ▒▒▒                 
#                                          ▒███▒███ ▒███  ████  █████ █████   
#                                          ▒███▒▒███▒███ ▒▒███ ▒▒███ ▒▒███    
#                                          ▒███ ▒▒██████  ▒███  ▒▒▒█████▒     
#                                          ▒███  ▒▒█████  ▒███   ███▒▒▒███    
#                                          █████  ▒▒█████ █████ █████ █████   
#                                         ▒▒▒▒▒    ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒    
#                                    
#                                              ███████████                     █████                                         
#                                             ▒▒███▒▒▒▒▒███                   ▒▒███                                          
#                                              ▒███    ▒███  ██████    ██████  ▒███ █████  ██████    ███████  ██████   █████ 
#                                              ▒██████████  ▒▒▒▒▒███  ███▒▒███ ▒███▒▒███  ▒▒▒▒▒███  ███▒▒███ ███▒▒███ ███▒▒  
#                                              ▒███▒▒▒▒▒▒    ███████ ▒███ ▒▒▒  ▒██████▒    ███████ ▒███ ▒███▒███████ ▒▒█████ 
#                                              ▒███         ███▒▒███ ▒███  ███ ▒███▒▒███  ███▒▒███ ▒███ ▒███▒███▒▒▒   ▒▒▒▒███
#                                             █████       ▒▒████████▒▒██████  ████ █████▒▒████████▒▒███████▒▒██████  ██████ 
#                                             ▒▒▒▒▒         ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒  ▒▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒███ ▒▒▒▒▒▒  ▒▒▒▒▒▒  
#                                                                                                   ███ ▒███                 
#                                                                                                  ▒▒██████                  
#                                                                                                   ▒▒▒▒▒▒                 
                                    
                                    
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    # ── Browsers / Social Media ──
    chromium
    vesktop

    # ── Music / Media ──
    vlc
    tauon
    spicetify-cli

    # ── Terminal / Editors ──
    kitty
    nano
    vim
    
    # ── CLI Applications ──
    fastfetch
    hyfetch
    cava
    cmatrix
    cbonsai
    starship
    lazygit
    lavat
   
    # ── System Tools ──
    git
    curl
    wget
    pciutils
    usbutils
    btop
    tree
    unzip
    ripgrep
    fd
    jq
    playerctl
    pavucontrol
    parsec-bin
    nautilus
    vscode 

    # ── Wayland / Hyprland Utilities ──
    wl-clipboard
    grim
    slurp
    hyprpaper
    rofi

    # ── Wallpaper / Theme Tools ──
    matugen
    awww
    imagemagick

    # ── Theming / Appearance ──
    papirus-icon-theme
    adwaita-icon-theme
    hicolor-icon-theme
    rose-pine-gtk-theme
    bibata-cursors
    nwg-look
    glib
    dconf
    gsettings-desktop-schemas

    # ── Lock Screen ──
    hyprlock

    # ── Gaming Tools ──
    mangohud
    protonup-qt
    prismlauncher
    gamescope

    # ── Creation / Recording ──
    obs-studio
    gimp
    krita

    # ── External Package Repositories ──
    flatpak    
    

  ];
}
