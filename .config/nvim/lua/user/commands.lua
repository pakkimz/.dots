-- SQL omni complete
vim.g.omni_sql_default_compl_type = 'syntax'

-- Tagbar
vim.g.tagbar_sort = 0
vim.g.tagbar_width = 30

-- Ag
-- vim.g.ag_highlight = 1
vim.g.ag_mapping_message = 0
vim.g.ag_working_path_mode = "r"

-- Vim-repeat adding support to related plugins
vim.cmd [[
  silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
]]

-- Disable autocomment
vim.cmd [[
  autocmd BufWinEnter * :set formatoptions-=cro
]]

-- Treat for every no name file as text file
vim.cmd [[
  augroup noname
    autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
  augroup end
]]

-- Highlighted yank
vim.cmd [[
  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=100 }
  augroup end
]]

-- When switching buffers, preserve window view.
-- vim.cmd [[
--   augroup preserve
--     autocmd BufLeave * if !&diff | let b:winview = winsaveview() | endif
--     autocmd BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | unlet! b:winview | endif
--   augroup end
-- ]]
