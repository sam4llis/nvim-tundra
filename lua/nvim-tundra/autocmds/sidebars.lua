local augroup_id = vim.api.nvim_create_augroup('Tundra', { clear = true })

vim.api.nvim_create_autocmd(
  { 'FileType' },
  {
    group = augroup_id,
    callback = function()
      if vim.tbl_contains(vim.g.tundra_opts.sidebars.filetypes, vim.bo.filetype) then
        vim.opt_local.winhighlight = 'Normal:NormalSB'
      end
    end,
  }
)

if vim.tbl_contains(vim.g.tundra_opts.sidebars.filetypes, 'terminal') then
  vim.api.nvim_create_autocmd(
    { 'TermOpen' },
    {
      group = augroup_id,
      callback = function()
        vim.opt_local.winhighlight = 'Normal:NormalSB'
      end,
    }
  )
end
