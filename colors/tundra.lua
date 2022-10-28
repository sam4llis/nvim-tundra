if vim.version().minor < 8 then
  vim.notify_once('[nvim-tundra] Neovim 0.8 or higher is required', vim.log.levels.ERROR)
  return
end

-- Set `termguicolors` before loading the colorscheme.
vim.opt.termguicolors = true

-- Clear all highlight groups before loading the colorscheme.
vim.cmd('highlight clear')
require('nvim-tundra').load()
