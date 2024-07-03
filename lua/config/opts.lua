-- Remove syntax highlighting
vim.cmd("syntax off")

-- Set up tabstops
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

-- Don't highlight search
vim.opt.hlsearch = false

-- Turn syntax highlighting off
vim.opt.syntax = "off"

-- Set relative number
vim.opt.number = true
vim.opt.relativenumber = true

-- Set color column to 88
vim.opt.colorcolumn = "88"

-- Reverse split directions
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Always open terminal in insert mode
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    command = "startinsert",
})
