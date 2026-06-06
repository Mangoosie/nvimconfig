return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Error Lens-style diagnostics: always show messages inline and in the sign column.
    vim.diagnostic.config({
      virtual_text = {
        spacing = 2,
        source = "if_many",
        prefix = "->",
        severity = { min = vim.diagnostic.severity.WARN },
      },
      signs = {
        severity = { min = vim.diagnostic.severity.WARN },
      },
      underline = {
        severity = { min = vim.diagnostic.severity.WARN },
      },
      update_in_insert = true,
      severity_sort = true,
      float = {
        source = "always",
        border = "rounded",
      },
    })

	vim.diagnostic.config({
		signs = {
			text = {
				[vim.diagnostic.severity.ERROR] = "E",
				[vim.diagnostic.severity.WARN] = "W",
			},
			numhl = {
				[vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
				[vim.diagnostic.severity.WARN] = "DiagnosticSignWarn"
			}
		}
	})


    require("mason").setup()
    require("mason-lspconfig").setup({
     ensure_installed = { "lua_ls", "gopls", "ts_ls", "angularls" },
    })

    -- NEW Neovim 0.11 API
    local lsp = vim.lsp

    -- Define server config
    lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
        },
      },
    })

    -- Go
    lsp.config("gopls", {})

    -- TypeScript / JavaScript
    lsp.config("ts_ls", {})

    -- Angular
    lsp.config("angularls", {
      on_new_config = function(new_config, root_dir)
        new_config.cmd = { "ngserver", "--stdio", "--tsProbeLocations", root_dir, "--ngProbeLocations", root_dir }
      end,
    })

    -- Enable servers automatically for matching buffers.
    lsp.enable({ "lua_ls", "gopls", "ts_ls", "angularls" })
  end,
}

