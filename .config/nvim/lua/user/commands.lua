-- SQL omni complete
vim.g.omni_sql_default_compl_type = 'syntax'

-- Tagbar
vim.g.tagbar_sort = 0
vim.g.tagbar_width = 30

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
