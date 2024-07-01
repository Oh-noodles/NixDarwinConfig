# hosts/YourHostName/default.nix
{ pkgs, ... }:
{

  # home.username = "joe";
  # home.stateVersion = "22.05";
  home.stateVersion = "23.11";
  home.packages = with pkgs; [
    htop
    neofetch
    # iterm2
    (nerdfonts.override { fonts = [ "Hack" ]; })
    nodejs
  ];
  programs.home-manager.enable = true;

  imports = [
    ./nixvim
  ];

  # homebrew = {
  #   enable = true;
  #   autoUpdate = false;
  #   # updates homebrew packages on activation,
  #   # can make darwin-rebuild much slower (otherwise i'd forget to do it ever though)
  #   casks = [
  #     "iina"
  #   ];
  # };
}
