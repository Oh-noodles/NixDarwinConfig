{
  description = "My first nix flake";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-23.11-darwin";
      # nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      home-manager.url = "github:nix-community/home-manager/release-23.11";
      # home-manager.url = "github:nix-community/home-manager";
      home-manager.inputs.nixpkgs.follows = "nixpkgs";
      # nix will normally use the nixpkgs defined in home-managers inputs, we only want one copy of nixpkgs though
      darwin.url = "github:lnl7/nix-darwin";
      darwin.inputs.nixpkgs.follows = "nixpkgs"; # ...
      nixvim = {
        url = "github:nix-community/nixvim/nixos-23.11";
        inputs.nixpkgs.follows = "nixpkgs";
      };
  };

  outputs = { self, nixpkgs, home-manager, darwin, ... } @inputs: {
    darwinConfigurations."joe" = darwin.lib.darwinSystem {
    # you can have multiple darwinConfigurations per flake, one per hostname
      system = "aarch64-darwin"; # "x86_64-darwin" if you're using a pre M1 mac
      modules = [
          home-manager.darwinModules.home-manager {
            services.nix-daemon.enable = true;
            programs.zsh = {
              enable = true;
              # ohMyZsh = {
              #   enable = true;
              #   theme = "ys";
              # };
            };
            users.users.joe.home = "/Users/joe";
            system.defaults.dock.autohide = true;
            system.defaults.trackpad.Clicking = true;

            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = {inherit inputs;};
            home-manager.users.joe = import ./hosts/joe;

            homebrew = {
              enable = true;
              # autoUpdate = false;
              onActivation.upgrade = true;
              # updates homebrew packages on activation,
              # can make darwin-rebuild much slower (otherwise i'd forget to do it ever though)
              casks = [
                "iina"
                "iterm2"
                "google-chrome"
                "rectangle"
                "contexts"
                "karabiner-elements"
              ];
            };
          }
          # ./hosts/joe/default.nix 
        ]; # will be important later
    };
  };

}
