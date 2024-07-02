-- Bind ; to : in normal and visual mode
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ";", ":", { noremap = true, silent = true })

-- Bind <C-h> to <C-w>h in normal and terminal mode
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, silent = true })

-- Bind <C-j> to <C-w>j in normal and terminal mode
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true, silent = true })

-- Bind <C-k> to <C-w>k in normal and terminal mode
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, silent = true })

-- Bind <C-l> to <C-w>l in normal and terminal mode
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true, silent = true })

-- Bind L to <C-w>gt in normal
vim.api.nvim_set_keymap("n", "L", "<C-w>gt", { noremap = true, silent = true })

-- Bind H to <C-w>gT in normal
vim.api.nvim_set_keymap("n", "H", "<C-w>gT", { noremap = true, silent = true })

-- Bind <C-n> to <C-\><C-n> in terminal mode
vim.api.nvim_set_keymap("t", "<C-n>", "<C-\\><C-n>", { noremap = true, silent = true })
