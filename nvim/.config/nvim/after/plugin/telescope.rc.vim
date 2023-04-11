nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
nnoremap <silent><leader>gb <cmd>lua

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["t"] = actions.select_tab,
        ["v"] = actions.select_vertical,
        ["h"] = actions.select_horizontal,
      },
      i = {
        -- previewers not applied :(
        -- ["<C-s>"] = actions.cycle_previewers_next,
        -- ["<C-a>"] = actions.cycle_previewers_prev,
        ["<C-b>"] = actions.git_create_branch,
        ["<C-c>"] = actions.git_checkout,
      }
    },
  }
}
EOF
