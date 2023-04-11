lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga({
  border_style = "plus",
  diagnostic_header_icon = { "😡", "😤", "😐", "!" },
    -- show diagnostic source
    show_diagnostic_source = true,
    -- add bracket or something with diagnostic source, just have 2 elements
    diagnostic_source_bracket = {},
    -- use emoji lightbulb in default
    code_action_icon = "💡",
    -- if true can press number to execute the codeaction in codeaction window
    code_action_num_shortcut = true,
    -- same as nvim-lightbulb but async
    code_action_lightbulb = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true,
    },
    finder_action_keys = {
        open = "o",
        vsplit = "v",
        split = "s",
        tab = "t",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>", -- quit can be a table
    },
    code_action_keys = {
        quit = "q",
        exec = "<CR>",
    },
    rename_action_quit = "<C-c>",
})

EOF

nnoremap <silent><C-j> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent><C-k> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent>K <cmd>Lspsaga hover_doc<CR>
inoremap <silent><C-k> <cmd>Lspsaga signature_help<CR>

" finds cursor word definition and reference
nnoremap <silent>gh <cmd>Lspsaga lsp_finder<CR>

nnoremap <silent>gp <cmd>Lspsaga preview_definition<CR>
nnoremap <silent><leader>gr <cmd>Lspsaga rename<CR>

" Use code actions
nnoremap <silent><leader>ca <cmd>Lspsaga code_action<CR>
vnoremap <silent><leader>ca <cmd><C-U>Lspsaga range_code_action<CR>

" float term
nnoremap <silent><A-d> <cmd>Lspsaga open_floaterm<CR>
" this :q hack is hacky af
tnoremap <silent><A-d> <cmd>Lspsaga close_floaterm<CR>:q<CR>
