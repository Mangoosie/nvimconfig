{ pkgs, ... }:
{
  home.packages = [
    pkgs.nerd-fonts.fira-code
    (pkgs.neovim.override {
      extraLuaPackages = ps: [ ps.jsregexp ];
      configure = {
        customRC = "source /home/mangoose/.config/nvim/init.vim";
        packages.myPlugins = with pkgs.vimPlugins; {
          start = [
            luasnip
            friendly-snippets
            nvim-cmp
            cmp_luasnip
            (nvim-treesitter.withAllGrammars)
          ];
        };
      };
    })
  ];
}
