if vim.version().minor < 7 then
  vim.notify_once('[nvim-tundra] Neovim 0.7 or higher is required.', vim.log.levels.ERROR)
  return
end

-- Clear all highlight groups before loading the colorscheme.
if vim.g.colors_name then
  vim.cmd('highlight clear')
end

vim.g.colors_name = 'tundra'

-- Set `termguicolors` before loading the colorscheme.
vim.opt.termguicolors = true

require('nvim-tundra').load()
