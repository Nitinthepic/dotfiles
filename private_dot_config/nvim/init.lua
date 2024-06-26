-- Leader key must be set before plugins are required.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.background = 'light'

-- Bootstrap the plugin manager.
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('config.options')
require('config.keymaps')
require('config.autocmds')

require('lazy').setup({
  spec = {
    { import = "plugins" },
  },
  defaults = {
    lazy = false,                -- Don't lazy load by default.
    version = false,             -- Always use the latest git commit.
  },
  ui = {
    border = "rounded"
  },
  checker = { enabled = false }, -- Don't auto-check for updates.
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}, {})
