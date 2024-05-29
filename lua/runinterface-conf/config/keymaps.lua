local map = vim.keymap.set
local opts = { noremap = true, silent = true }


map('n', 'C-_', ':NvimTreeToggle<CR>', opts)
