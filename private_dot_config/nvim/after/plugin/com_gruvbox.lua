local colors = require('utils').colors

require("gruvbox").setup({
  undercurl = false,
  underline = false,
  bold = true,
  italic = {
    strings = false,
    comments = false,
    operators = false,
    folds = false,
  },
  strikethrough = false,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,
  dim_inactive = false,
  transparent_mode = true,
  contrast = "",
  overrides = {

  },
})

vim.cmd("colorscheme gruvbox")
