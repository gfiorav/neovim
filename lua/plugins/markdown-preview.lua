return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
    config = function()
        -- Set to 1 to open preview in browser automatically when opening markdown files
        vim.g.mkdp_auto_start = 0

        -- Set to 1 to auto-close preview when changing from markdown buffer
        vim.g.mkdp_auto_close = 1

        -- Set to 1 to refresh preview when saving buffer or leaving insert mode
        vim.g.mkdp_refresh_slow = 0

        -- Browser to use (empty = default browser)
        vim.g.mkdp_browser = ""

        -- Echo preview page URL in command line when opening
        vim.g.mkdp_echo_preview_url = 1

        -- Theme: 'dark' or 'light'
        vim.g.mkdp_theme = "light"

        -- Enable mermaid diagrams
        vim.g.mkdp_preview_options = {
            maid = {},
            uml = {},
            disable_sync_scroll = 0,
            sync_scroll_type = "middle",
            hide_yaml_meta = 1,
            sequence_diagrams = {},
            flowchart_diagrams = {},
            content_editable = false,
            disable_filename = 0,
        }
    end,
}
