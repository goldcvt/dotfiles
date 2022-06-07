" indent-ey things
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" auto-source .vimrc in a directory that you open with vim
set exrc
" scroll & numbers
" scroll when 8 lines away from top/bottom 
set scrolloff=8
set sidescrolloff=10
set relativenumber
set number
" finally, disable the fucking search highlight after you press the return
" button
set nohlsearch
" uloaded buffer is just hidden, not abandoned
set hidden
set noerrorbells
" don't wrap really long lines
set nowrap
" maybe way too much. column to not cross with your chars
set colorcolumn=120

" file history stuff. add undotree too
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch

set termguicolors
" side-gutter or something. useful for linting or git stuff those + and - 
set signcolumn=yes

" autocomplete or something
set completeopt=menuone,noinsert,noselect

" more space for messages
set cmdheight=2

" Primeagen's special
set updatetime=50
" Don't pass any messages to auto-complete menu
set shortmess+=c

" Clipboards
" some tmux thingies. not quite sure tis a good idea
" let g:clipboard = {
"         \   'name': 'myClipboard',
"          \   'copy': {
"          \      '+': ['tmux', 'load-buffer', '-'],
"          \      '*': ['tmux', 'load-buffer', '-'],
"          \    },
"          \   'paste': {
"          \      '+': ['tmux', 'save-buffer', '-'],
"          \      '*': ['tmux', 'save-buffer', '-'],
"          \   },
"          \   'cache_enabled': 1,
"          \ }
set clipboard+=unnamedplus

" customize find
" https://www.reddit.com/r/neovim/comments/qkbx5n/comment/hizfmsx/?utm_source=share&utm_medium=web2x&context=3 
set wildmenu
set path+=**

" Plugin time baby!
" NOTE! You need to install vim-plug for this!
call plug#begin('~/.vim/plugged')
" popup windows
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
" fuzzy finder
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
" lsp
" undotree
" ??
" some git integrations
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

" <leader> is SPACE
let mapleader=" "
" remaps and stuff
" mode nore? (if present - do not execute other remaps from this one) map lhs (what we type) rhs (what is executed)
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep project for >")})<CR>

" Autocommands. Like 'em event listeners in good ol' JS
fun! TrimTrailingWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
" yep, fun has ended. no more fun
endfun

" used to reboot only the autocommands I've set up
augroup GOLDCVT
  autocmd!
  autocmd BufWritePre * :call TrimTrailingWhitespace()
augroup END
