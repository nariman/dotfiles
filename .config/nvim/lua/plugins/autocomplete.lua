return {
  {
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    dependencies = {
      { "L3MON4D3/LuaSnip" }, -- Snippet engine for nvim-cmp.
      { "onsails/lspkind.nvim" }, -- Autocomplete source icons
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lsp-signature-help" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-emoji" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
    },

    opts = {
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      experimental = {
        ghost_text = true,
      },
    },

    config = function(_, opts)
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      cmp.setup({
        snippet = opts.snippet,
        experimental = opts.experimental,

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
          }),
        },
        sources = cmp.config.sources({
          { name = "luasnip" },
          { name = "nvim_lsp" },
          { name = "nvim_lsp_signature_help" },
          { name = "buffer" },
          { name = "emoji" },
          { name = "path" },
          { name = "cmdline" },
        }),
      })
    end,
  },
}
