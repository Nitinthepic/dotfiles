return {
  {
    -- colorscheme
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    terminal_colors = true,
  },
  {
    -- indent lines
    'lukas-reineke/indent-blankline.nvim',
    event = "BufReadPre",
  },
  {
    -- LSP stuff
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'folke/neodev.nvim',
    },
    ui = {
      border = "rounded"
    },
  },
  {
    -- autocompletion
    'hrsh7th/nvim-cmp',
    version = false,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
  },
  {
    -- fuzzy finding
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    }
  },
  {
    -- fuzzy finding with fzf (only install if `make` is available)
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },
  {
    -- treesitter for source code parsers
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
  },
  {
    'stevearc/aerial.nvim',
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    -- marking and jumping
    'ThePrimeagen/harpoon',
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    version = "*"
  },
  'nanozuki/tabby.nvim',       -- better tabline
  'echasnovski/mini.pairs',    -- auto pairs
  'echasnovski/mini.surround', -- surrounding
  'folke/which-key.nvim',      -- help for key mapping
  'folke/trouble.nvim',        -- diagnostics
  'ggandor/flit.nvim',         -- horizontal movement
  'ggandor/leap.nvim',         -- vertical movement
  'lewis6991/gitsigns.nvim',   -- git diagnostic signs
  'nvim-lualine/lualine.nvim', -- snazzy status line
  'rust-lang/rust.vim',        -- stuff for a good language
  'simrat39/rust-tools.nvim',  -- tools for a good language
  'tpope/vim-commentary',      -- commenting
  'tpope/vim-eunuch',          -- very cool stuff
  'tpope/vim-fugitive',        -- the git of GitHub
  'tpope/vim-repeat',          -- sane repeat
  'tpope/vim-rhubarb',         -- the hub of GitHub
  'tpope/vim-sleuth',          -- autodetect tabstops/shiftwidth
  'tpope/vim-speeddating',     -- incrementing dates
}
