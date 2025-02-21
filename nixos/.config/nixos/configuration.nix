{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # flakes.
  nix.settings.experimental-features = ["nix-command" "flakes"]; 
 
  # hostname.
  networking.hostName = "nixos";
  
  # networking.
  networking.networkmanager.enable = true;

  # time zone.
  time.timeZone = "Europe/Berlin";

  # locale.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # x11 keymap
  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };

  # console keymap
  console.keyMap = "de";

  # user account
  users.users.sasquatchdev = {
    isNormalUser = true;
    description = "sasquatchdev";
    extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
    packages = with pkgs; [];
  };

  # allow unfree.
  nixpkgs.config.allowUnfree = true;

  # hyprland.
  programs.hyprland.enable = true;
  services.xserver = {
    enable = true;
    videoDrivers =  [ "nvidia" ];

    displayManager = {
      sddm.enable = true;
      defaultSession = "hyprland";
    };
  };
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;

    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  environment.variables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    LIBVA_DRIVER_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    __GL_VRR_ALLOWED = "1";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
  };

  services.seatd.enable = true;
  services.displayManager.defaultSession = "hyprland";

  # import packages.nix
  environment.systemPackages = with pkgs; import ./packages.nix { inherit pkgs; };
  
  # that's it.
  system.stateVersion = "24.11";
}
