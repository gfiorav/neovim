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

-- Case insensitive search (smartcase makes it case-sensitive when using uppercase)
vim.opt.ignorecase = true
vim.opt.smartcase = true

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

-- Always open terminal in insert mode with relative line numbers
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.cmd("startinsert")
    end,
})

-- Show line numbers when leaving insert mode in terminal
vim.api.nvim_create_autocmd("TermLeave", {
    pattern = "*",
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = true
        local last = vim.api.nvim_buf_line_count(0)
        vim.api.nvim_win_set_cursor(0, { last, 0 })
    end,
})

-- Hide line numbers when entering insert mode in terminal
vim.api.nvim_create_autocmd("TermEnter", {
    pattern = "*",
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
    end,
})
