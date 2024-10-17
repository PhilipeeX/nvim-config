-- Mapeamento para desidentação com Shift-Tab
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

-- Mapeia Alt + h para ir para o buffer à esquerda
vim.api.nvim_set_keymap('n', '<A-h>', ':bprevious<CR>', { noremap = true, silent = true })

-- Mapeia Alt + l para ir para o buffer à direita
vim.api.nvim_set_keymap('n', '<A-l>', ':bnext<CR>', { noremap = true, silent = true })

