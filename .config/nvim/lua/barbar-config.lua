local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<S-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<S-l>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<S-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<S->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<S-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<S-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<S-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<S-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<S-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<S-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<S-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<S-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<S-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<S-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<S-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<S-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<S-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
