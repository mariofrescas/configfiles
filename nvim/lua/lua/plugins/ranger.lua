-- Disable the default key mapping
vim.g.ranger_map_keys = 0

-- Open ranger when vim open a directory
vim.g.ranger_replace_netrw = 1

vim.api.nvim_set_keymap('n', '<leader>e', ':RangerCurrentFile<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':RangerWorkingDirectory<cr>', { noremap = true })
