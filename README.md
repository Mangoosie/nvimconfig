This repo contains my configuration for my Nixos and Neovim

### nvimconfig ###
# Installation:
Create a symlink from .config/nvim -> git/nvimconfig/nvim
 - ln -s ~/git/nvimconfig/nvim/ -T nvim

# Dependencies on Linux:
 - Install treesitter-cli
    > Install cargo(rust)
    > libclang-dev
    > cargo install -locked tree-sitter-cli
 - Install Unzip
 - Install jsregexp
    > Install lua
    > Install lua rocks
    > install jsregexp
        >`luarocks install jsregexp`
 - Install rg
    > sudo apt-get install ripgrep
 - Install fd
    > sudo apt install fd-find

### Nixos ###

# Dir structure

nixos-config/
├── flake.nix
├── hosts/desktop-nixos/ <-- add dir for each unique host
│   ├── default.nix
│   └── hardware-configuration.nix 
├── modules/
│   └── ... (system modules)
└── home/ <-- add programs here if they need more than a one line
    ├── mangoose.nix
    ├── neovim.nix
    ├── git.nix
    ├── ssh.nix
    └── kitty.nix

# Rebuild
sudo nixos-rebuild switch --flake ~/Documents/git/nvimconfig/nixos-config#desktop-nixos


# TODO
add kde plasma config
maybe seperate some of the programs for better granularity
