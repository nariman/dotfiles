return {
  {
    "ojroques/nvim-osc52",
    event = "VeryLazy",

    config = function()
      local function copy(lines, _)
        require("osc52").copy(table.concat(lines, "\n"))
      end

      local function paste()
        return {vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("")}
      end

      vim.g.clipboard = {
        name = "osc52",
        copy = {["+"] = copy, ["*"] = copy},
        paste = {["+"] = paste, ["*"] = paste},
      }
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = true,
  },

  { -- Smooth scrolling
    "declancm/cinnamon.nvim",
    event = "VeryLazy",
    config = true,
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = true,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      options = {
        globalstatus = true,
	theme = "catppuccin",
      },
    },
    config = true,
  },

  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = true,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",

    opts = {
      current_line_blame = true,
    },
    config = true,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",

    opts = {
      char = "▏",
      use_treesitter = true,
      show_first_indent_level = false,
      show_trailing_blankline_indent = false,
    },
    config = true,
  },

  {
    "akinsho/bufferline.nvim",
    version = "^3.2",
    enable = false,
    config = true,
  },

  {
    "RRethy/vim-illuminate",
    enable = false,
    event = "VeryLazy",
  },

  {
    "petertriho/nvim-scrollbar",
    event = "VeryLazy",
    config = true,
  },
}
