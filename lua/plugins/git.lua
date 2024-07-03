return {
    -- vim-fugitive
    {
        "tpope/vim-fugitive",
        config = function()
            vim.g.fugitive_git_executable = "git"
        end,
    },
    -- vim-gitgutter
    {
        "airblade/vim-gitgutter",
    },
}
