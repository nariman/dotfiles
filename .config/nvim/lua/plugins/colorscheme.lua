return {
  {
    "marko-cerovac/material.nvim",
    lazy = true,
  },

  {
    "shaunsingh/nord.nvim",
    lazy = true,

    config = function()
      vim.g.nord_disable_background = false
      nord.set()
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,

    opts = {
      style = "night",
      transparent = false,
    },

    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end,
  }
}
