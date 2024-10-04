return {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_list = {
            {
                path = "~/docs/vimwiki",
                syntax = "default",
                ext = ".wiki",
            },
        }
    end,
}
