" remaps and stuff
" mode nore? (if present - do not execute other remaps from this one) map lhs (what we type) rhs (what is executed)
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep project for >")})<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>
" open new empty line in insert mode. doesn't jump there for some reason :(
inoremap <C-CR> <Esc>O<Esc>kI
inoremap <S-CR> <Esc>o<Esc>jI

" Open current directory
nnoremap te :tabedit
nnoremap <S-Tab> :tabprev<Return>
nnoremap <Tab> :tabnext<Return>

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" d and x without yank
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap x "_x

" c without doing buffer
nnoremap <leader>c "_c
vnoremap <leader>c "_c

" Yank what 'xcuse me?
nnoremap Y yg$

" Window resize in vim split
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" sh and !command remaps
nnoremap <leader>x :silent !chmod +x %<CR>

" ===== GIT FUGITIVE
nmap<leader>gs :G<CR>
nmap<leader>gj :diffget //2<CR>
nmap<leader>gk :diffget //3<CR>
nnoremap <leader>gc :Git checkout<CR>
nnoremap <leader>gd :Git diff<CR>

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeFocus<CR>

" formating/linting
nnoremap <leader>f :lua vim.lsp.buf.formatting_sync()<CR>
nnoremap <leader>l :lua vim.lsp.buf.diagnostics()<CR>
