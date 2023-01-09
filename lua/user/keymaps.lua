local map = vim.api.nvim_set_keymap
local defaults = { noremap = true, silent = true }

vim.g.mapleader = ' '

map("i", "jk", "<esc>l", defaults)

-- Fuzzy
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", defaults)
map("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", defaults)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", defaults)

map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", defaults)

-- Buffer navigation
map("n", "S-h", "<cmd>bprevious<cr>", defaults)
map("n", "S-l", "<cmd>bnext<cr>", defaults)

-- Save file
map("n", "<leader>w", ":w<cr>", defaults)

-- Go generate interface
map('n', '<leader>im', [[<cmd>lua require'telescope'.extensions.goimpl.goimpl{}<CR>]], defaults)

-- Open Tree
map('n', '<leader>fe', '<cmd>NvimTreeToggle<cr>', defaults)
