require'nvim-treesitter.configs'.setup{
    ensure_installed = { "lua", "typescript", "javascript", "dockerfile", "python" },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
