# nixvim-config

## Table of contents
1. [Setup](#setup)
2. [Testing a new configuration](#testing-a-new-configuration)
3. [Old lua config](#old-lua-config)

## Setup

Add this flake as input into your `flake.nix`

```nix
inputs = {
    ...
    nixvim-config.url = "github:invertedEcho/nvim-config";
};
```

Make `inputs` available to your home-manager configuration (Replace the placeholders with your corresponding values)

```nix
nixosConfigurations = {
    # The `rec` keyword makes any attributes declared inside this attribute set recursive,
    # e.g. we can reuse them at a later point
    hostname = nixpkgs.lib.nixosSystem rec {
        specialArgs = {inerhit inputs;};

        modules = [
            ...

            home-manager.nixosModules.home-manager
            {
                home-manager = {
                    users.<username> = import <path_to_home.nix>
                    extraSpecialArgs = specialArgs;
                }
            }
        ];
    }
}
```

Then, in your home.nix file, add `inputs` as argument to the function and add the nixvim config as package

```nix
{
    pkgs,
    # Note the inputs here
    inputs,
    ...
}: {
    home = {
        ...

        # Here comes the relevant part:
        packages = with pkgs; [
            inputs.nixvim-config.packages.${pkgs.system}.default
        ]
    }
}
```

You should now be able to rebuild your nixos configuration and when running nvim you should have the config set up.


## Testing a new configuration

To test a new configuration without installing it simply run the following command in the cloned reposity

```
nix run .
```

## Old lua config

Browse the repo before I've switched to nixvim: https://github.com/invertedEcho/nixvim-config/tree/f80d6a2381a5ca31622b4492eee160a18e911a61
