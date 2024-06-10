local colors = require('utils').colors

vim.cmd('highlight IndentBlanklineIndent1 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent2 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent3 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent4 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent5 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent6 guifg=' .. colors.black)

require("ibl").setup {}
