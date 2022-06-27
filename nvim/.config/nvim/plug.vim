if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

" Plugin time baby!
" NOTE! You need to install vim-plug for this!
call plug#begin()
" popup windows
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
" fuzzy finder
Plug 'nvim-telescope/telescope.nvim'
" colorscheme, obvsly
Plug 'gruvbox-community/gruvbox'
" also, remeber! we wanna use per-project stuff like nvm, pyenv, poetry and
" npm
" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
" COMPLETION -------
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" END COMPLETION --------
Plug 'windwp/nvim-autopairs'

" treesitter for this nice lil highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
" When scrolling, show a bit of context inside functions etc
Plug 'nvim-treesitter/nvim-treesitter-context'
"
Plug 'mbbill/undotree'
" ??
" folding
" MUST-HAVE for per-project settings nlsp-settings.nvim
" debugger plugins
" some git integrations
" fzf ? + cht.sh
" ripgrep is nice too
" refactoring.nvim
" vim be good just for the helluvit
" prettier / code formatter. Plug 'sbdchd/neoformat'
" python formatter too. do black? can be installed as lsp plugin too
" prolly do pyright + flake8 linter https://github.com/nvie/vim-flake8 and black formatter https://www.reddit.com/r/neovim/comments/l3xm4f/how_to_format_python_code_when_using_pyright/
"https://www.reddit.com/r/neovim/comments/qnglml/how_do_i_integrate_pythons_flake8_into_neovim/
" some complexity checker like lizard
" and some Vue things too...
" abolish-vim or text-case.nvim
" lua-snip
" eslint
" for JSON add jvim and remaps like in https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/ftplugin/json.vim
" jump to definition or whatever?
" some plugin for todos highlighting and pre-commit checks of them
call plug#end()
