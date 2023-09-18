return {
  {
    "folke/neodev.nvim",
    enable = true,
    config = true,
  },

  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    config = true,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = true,
  },
  {
    "williamboman/mason.nvim",
    lazy = true,
    config = true,
  },
  {
    "williamboman/mason-lspconfig",
    event = "VeryLazy",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },

    opts = {
      ensure_installed = {
        "pyright",
        "rust_analyzer",
        "lua_ls",
      },
    },

    config = function(_, opts)
      local mason_lspconfig = require("mason-lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")

      local capabilities = cmp_nvim_lsp.default_capabilities()

      mason_lspconfig.setup(opts)
      mason_lspconfig.setup_handlers({
        function (server_name)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities
          })
        end
      })
    end,
  },
}
