return {
    {
        "junegunn/fzf",
        build = "./install --bin"
    },
    {
        "junegunn/fzf.vim",
        keys = {
            { "<C-p>", ":Files<CR>" },
            { "<C-b>", ":Buffers<CR>" },
            { "<C-f>", ":History:<CR>" },
            { "<C-g>", ":GFiles<CR>" },
        },
    },
}
