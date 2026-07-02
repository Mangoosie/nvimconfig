return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "lua", "go", "javascript", "typescript", "html", "tsx", "angular", "css",
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua", "go", "javascript", "typescript", "html", "htmlangular", "tsx" },
      callback = function() pcall(vim.treesitter.start) end,
    })
  end,
}
