return {
  {
    "nvim-treesitter/nvim-treesitter",

    opts = {
      highlight = { enable = true },
      ensure_installed = {
        "javascript",
        "lua",
        "python",
        "rust",
        "typescript"
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = "<nop>",
          node_decremental = "<bs>",
        },
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
