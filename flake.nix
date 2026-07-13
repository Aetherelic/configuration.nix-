
#                               ██████   █████  ███                
#                               ▒▒██████ ▒▒███  ▒▒▒                 
#                                ▒███▒███ ▒███  ████  █████ █████   
#                                ▒███▒▒███▒███ ▒▒███ ▒▒███ ▒▒███    
#                                ▒███ ▒▒██████  ▒███  ▒▒▒█████▒     
#                                ▒███  ▒▒█████  ▒███   ███▒▒▒███    
#                                █████  ▒▒█████ █████ █████ █████   
#                               ▒▒▒▒▒    ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒  
#  
#                                               ███████████ ████            █████                      
#                                              ▒▒███▒▒▒▒▒▒█▒▒███           ▒▒███                       
#                                               ▒███   █ ▒  ▒███   ██████   ▒███ █████  ██████   █████ 
#                                               ▒███████    ▒███  ▒▒▒▒▒███  ▒███▒▒███  ███▒▒███ ███▒▒  
#                                               ▒███▒▒▒█    ▒███   ███████  ▒██████▒  ▒███████ ▒▒█████ 
#                                               ▒███        ▒███  ███▒▒███  ▒███▒▒███ ▒███▒▒▒   ▒▒▒▒███
#                                                █████       █████▒▒████████ ████ █████▒▒██████  ██████ 
#                                               ▒▒▒▒▒       ▒▒▒▒▒  ▒▒▒▒▒▒▒▒ ▒▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒  ▒▒▒▒▒▒  
                                                        
                                                                                             

{
  description = "Aether NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";

    whisker = {
      url = "github:corecathx/whisker";
      flake = false;
    };

    whiskerCli = {
      url = "github:corecathx/whisker-cli";
      flake = false;
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }: {
    nixosConfigurations.aether-nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };

      modules = [
        inputs.spicetify-nix.nixosModules.default
        ./modules/core/spicetify.nix
        ./configuration.nix
      ];
    };
  };
}
