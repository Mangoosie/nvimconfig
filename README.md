# nvimconfig
Installation:
Create a symlink from .config/nvim -> git/nvimconfig/nvim
 - ln -s ~/git/nvimconfig/nvim/ -T nvim

Dependencies on Linux:
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
