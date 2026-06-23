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

-- Propagate terminal titles to the outer terminal/tab
vim.o.title = true

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

-- Update outer terminal title on buffer switch
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        if vim.bo.buftype == "terminal" then
            vim.o.titlestring = vim.b.term_title or "terminal"
        else
            vim.o.titlestring = ""
        end
    end,
})

-- Update outer terminal title in real-time when the inner program changes it
vim.api.nvim_create_autocmd("TermRequest", {
    callback = function(ev)
        if ev.data and ev.data.sequence and ev.data.sequence:match("^\027]0;") then
            vim.o.titlestring = vim.b[ev.buf].term_title or "terminal"
        end
    end,
})
