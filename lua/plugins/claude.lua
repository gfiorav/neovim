return {
    "greggh/claude-code.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim", -- Required for git operations
    },
    config = function()
        require("claude-code").setup({
            window = {
                position = "float",
                float = {
                    width = "98%",
                    height = "98%",
                    row = "center",
                    col = "center",
                    relative = "editor",
                    border = "double",
                },
            },
        })
    end
}
