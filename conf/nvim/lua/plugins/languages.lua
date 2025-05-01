return {
  {"ixru/nvim-markdown"},
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    auto_install = true,
    ensure_installed = {"bash", "lua", "python", "typescript"},
    highlight = { enable = true },
    indent = { enable = true },
    fold = { enable = true },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim", -- LSP installer
      "williamboman/mason-lspconfig.nvim", -- Mason <-> LSP integration
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "biome" },
      })
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("lspconfig")["pyright"].setup {
        capabilities = capabilities,
--      settings = {
--        python = {
--          analysis = {
--            extraPaths = {}
--          }
--        }
--      }
      }
      require("lspconfig")["biome"].setup {
        capabilities = capabilities
      }
    end,
  },
}
