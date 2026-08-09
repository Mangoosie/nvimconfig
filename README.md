This repo contains my configuration for my Nixos and Neovim

### Nixos ###

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

### nvimconfig ###
My nvim config



