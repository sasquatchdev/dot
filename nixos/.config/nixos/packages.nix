{ pkgs, ... }: with pkgs; [
  # hyprland + utils
  hyprland
  hyprpaper
  hypridle
  hyprlock

  # more hyprland
  waybar
  rofi-wayland
  mako
  kitty
  firefox

  # IMPORTANT
  stow

  libinput

  # ALSO IMPORTANT
  neovim
  git
  github-cli
]
