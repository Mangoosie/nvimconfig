return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "lua", "go", "javascript", "typescript", "html", "tsx", "angular", "css","php",
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua", "go", "javascript", "typescript", "html", "htmlangular", "tsx", "php" },
      callback = function() pcall(vim.treesitter.start) end,
    })
  end,
}
