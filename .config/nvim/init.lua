vim.g.mapleader = " ";

local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({
    "git", "clone",
    "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazy_path,
  })
end

vim.opt.rtp:prepend(lazy_path)
require("lazy").setup("plugins")


vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.mouse = 'a'

-- Save undo history
vim.opt.undofile = true

-- Case insensitive search unless capitals in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

--
-- Settings for `nvim-tree` plugin
--

-- Disable netrw (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true
