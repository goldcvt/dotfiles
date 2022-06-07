    set lcs+=space:.
    set list!

    call plug#begin('~/.vim/plugged')
    " Typescript, linter, snippets...
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

    " Navigation
    Plug 'scrooloose/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'dyng/ctrlsf.vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'

    Plug 'eugen0329/vim-esearch'

    Plug 'christoomey/vim-tmux-navigator'

    " idents
    Plug 'yggdroot/indentline'                              " visualize indentation levels

    " git
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'

    " ??
    Plug 'scrooloose/nerdcommenter'

    "pairs
    Plug 'jiangmiao/auto-pairs'

    " NPM
    Plug 'neoclide/npm.nvim', {'do' : 'npm install'}

    " backgound
    Plug 'tribela/vim-transparent'

    "json
    Plug 'elzr/vim-json'

    " themes
    "=============
    Plug 'mhartington/oceanic-next'
    Plug 'lifepillar/vim-solarized8'
    "Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'morhetz/gruvbox'
    Plug 'altercation/vim-colors-solarized'
    "Plug 'vim-scripts/Ambient-Color-Scheme'
    "Plug 'savq/melange'
    Plug 'vivkin/flatland.vim'
    "Plug 'glepnir/oceanic-material'
    "Plug 'softmotions/vim-dark-frost-theme'
    "Plug 'filipekiss/night-hawk'
    "Plug 'damage220/solas.vim'
    Plug 'cocopon/iceberg.vim'
    Plug 'arcticicestudio/nord-vim'
    "Plug 'sainnhe/sonokai'
    "Plug 'carakan/new-railscasts-theme'
    Plug 'mikker/seoul256-iTerm'
    Plug 'junegunn/seoul256.vim'
        "Plug 'vim-scripts/Zenburn'
    Plug 'acepukas/vim-zenburn'
    Plug 'mdlerch/tungsten.vim'
    Plug 'haystackandroid/vim-crunchbang'
    Plug 'habamax/vim-bronzage'
    Plug 'conweller/muted.vim'
    Plug 'AlxHnr/clear_colors'
    "=============

    "Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    "Plug 'tsony-tsonev/nerdtree-git-plugin'
    "Plug 'ryanoasis/vim-devicons'

    " Initialize plugin system
    call plug#end()

    :let mapleader = "\<Space>"
    nmap<leader>gs :G<CR>
    nmap<leader>gj :diffget //2<CR>
    nmap<leader>gk :diffget //3<CR>
    nnoremap <leader>gc :GCheckout<CR>
    nnoremap <leader>gd :Git diff<CR>
    "<leader>cc - commit

    " Прыгаем по меткам
    nnoremap 1 :'Q<CR>
    nnoremap 2 :'W<CR>
    nnoremap 3 :'E<CR>
    nnoremap 4 :'R<CR>

    inoremap jk <ESC>
    nnoremap <C-n>f :NERDTreeToggle<CR>
    vmap ++ <plug>NERDCommenterToggle
    nmap ++ <plug>NERDCommenterToggle

    :map <F9> :cnf

    "space + ff - search by files

    map ; :GFiles<CR>
    map <leader>; :Files ~<CR>
    "nnoremap <C-f> :Ag **/*<Cr>

    " open NERDTree automatically
    "autocmd StdinReadPre * let s:std_in=1
    "autocmd VimEnter * NERDTree


    let g:NERDTreeGitStatusWithFlags = 1
    "let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    "let g:NERDTreeGitStatusNodeColorization = 1
    "let g:NERDTreeColorMapCustom = {
        "\ "Staged"    : "#0ee375",  
        "\ "Modified"  : "#d9bf91",  
        "\ "Renamed"   : "#51C9FC",  
        "\ "Untracked" : "#FCE77C",  
        "\ "Unmerged"  : "#FC51E6",  
        "\ "Dirty"     : "#FFBD61",  
        "\ "Clean"     : "#87939A",   
        "\ "Ignored"   : "#808080"   
        "\ }                         


    let g:NERDTreeIgnore = ['^node_modules$']

    " vim-prettier
    "let g:prettier#quickfix_enabled = 0
    "let g:prettier#quickfix_auto_focus = 0
    " prettier command for coc
    command! -nargs=0 Prettier :CocCommand prettier.formatFile
    " run prettier on save
    "let g:prettier#autoformat = 0
    "autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


    " ctrlp
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

    " j/k will move virtual lines (lines that wrap)
    noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
    noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

    set relativenumber

    set smarttab
    set cindent
    set tabstop=4
    set shiftwidth=4
    " always uses ppaces instead of tab characters
    set expandtab

    "indent
    set backspace=indent,eol,start
    set autoindent
    set smartindent
    set cindent
    set backspace=indent,eol,start

    " COLORS SETTINGS
"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
syntax enable

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_bold = 1

let g:solarized_termcolors=16
let g:seoul256_srgb = 1

colo gruvbox
set background=dark


" sync open file with NERDTree
" " Check if NERDTree is open or active

" Highlight currently open buffer in NERDTree

let g:coc_disable_startup_warning = 1

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_nfo()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>i


let g:vim_json_syntax_conceal = 0
set conceallevel=0
