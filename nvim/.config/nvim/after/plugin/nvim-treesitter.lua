require'nvim-treesitter.configs'.setup{
    ensure_installed = { "lua", "typescript", "javascript", "dockerfile" },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}
