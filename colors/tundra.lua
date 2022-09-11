-- Set `termguicolors` before loading the colorscheme.
vim.opt.termguicolors = true

-- Clear all highlight groups before loading the colorscheme.
vim.cmd('highlight clear')
require('nvim-tundra').load()
