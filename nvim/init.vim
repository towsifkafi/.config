set mouse=v
set hlsearch
set autoindent
set number
syntax on
set mouse=a
set noswapfile
set backupdir=~/.cache/nvim/bak
set incsearch
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set ttyfast
set ignorecase
" set cursorline

call plug#begin()
    Plug 'mhinz/vim-startify'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdtree'
    Plug 'dracula/vim'
    Plug 'nordtheme/vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }

    Plug 'othree/html5.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'evanleck/vim-svelte', {'branch': 'main'}

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
colorscheme nord
let g:airline_powerline_fonts = 1

autocmd VimEnter * NERDTree | wincmd p 

" Remaps
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>f <cmd>Telescope find_files<cr>
