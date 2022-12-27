local options = { noremap = true }

-- Deactivate forward command (f = leader)
vim.keymap.set({ 'n', 'v' }, 'f', '<Nop>', { silent = true })

-- Exit edition mode
vim.api.nvim_set_keymap('i', 'jk', '<esc>', options)

-- Hold selection when indenting
vim.api.nvim_set_keymap('v', '>', '>gv', options)
vim.api.nvim_set_keymap('v', '<', '<gv', options)

-- Resize splits
vim.api.nvim_set_keymap('n', '<leader>>', '10<c-w>>', options)
vim.api.nvim_set_keymap('n', '<leader><', '10<c-w><', options)

-- Alt key for handling tabs
vim.api.nvim_set_keymap('n', '<a-t>', ':tabnew<cr>', options)
vim.api.nvim_set_keymap('n', '<a-q>', ':tabclose<cr>', options)
vim.api.nvim_set_keymap('n', '<a-h>', ':tabprevious<cr>', options)
vim.api.nvim_set_keymap('n', '<a-l>', ':tabnext<cr>', options)
vim.api.nvim_set_keymap('n', '<a-1>', ':tabn 1<cr>', options)
vim.api.nvim_set_keymap('n', '<a-2>', ':tabn 2<cr>', options)
vim.api.nvim_set_keymap('n', '<a-3>', ':tabn 3<cr>', options)
vim.api.nvim_set_keymap('n', '<a-4>', ':tabn 4<cr>', options)
vim.api.nvim_set_keymap('n', '<a-5>', ':tabn 5<cr>', options)
vim.api.nvim_set_keymap('n', '<a-6>', ':tabn 6<cr>', options)
vim.api.nvim_set_keymap('n', '<a-7>', ':tabn 7<cr>', options)
vim.api.nvim_set_keymap('n', '<a-8>', ':tabn 8<cr>', options)
vim.api.nvim_set_keymap('n', '<a-9>', ':tabn 9<cr>', options)
