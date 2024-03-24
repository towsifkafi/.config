set mouse=v
set hlsearch
set autoindent
set number
set noswapfile
set backupdir=~/.cache/nvim/bak
set incsearch
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set ttyfast
set ignorecase
set termguicolors

call plug#begin()
    Plug 'nvimdev/dashboard-nvim'
    Plug 'rcarriga/nvim-notify'
    Plug 'folke/noice.nvim'
    Plug 'folke/which-key.nvim'

    Plug 'nvim-lualine/lualine.nvim'

    Plug 'MunifTanjim/nui.nvim'
    Plug 'nvim-neo-tree/neo-tree.nvim'

    Plug 'dracula/vim'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'nordtheme/vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'nvim-tree/nvim-web-devicons'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'andrew-george/telescope-themes'

    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

    Plug 'RRethy/vim-illuminate'
    Plug 'kdheepak/lazygit.nvim'

call plug#end()

colorscheme catppuccin-mocha

" setup dashboard
lua vim.cmd("luafile " .. vim.fn.expand("~/.config/nvim/start.lua"))
lua vim.cmd("luafile " .. vim.fn.expand("~/.config/nvim/keymaps.lua"))

"autocmd VimEnter * set nornu nonu | Neotree toggle
autocmd BufEnter * set nu

" Remaps

inoremap <C-W> <Nop>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap 2 <cmd>Telescope find_files<cr>
nnoremap 1 <cmd>Neotree toggle<cr>
nnoremap 3 <cmd>LazyGit<cr>
nnoremap - <cmd>Telescope themes<cr>

" \v for init.vim file 
nnoremap <silent> <Leader>v :e $MYVIMRC<cr>

nnoremap <A-Left> :bprevious<CR>
nnoremap <A-Right> :bnext<CR>

"for i in range(1, 9)
"    execute 'nnoremap <A-' . i . '> :buffer' . i . '<CR>'
"endfor

nnoremap <A-p> :Telescope<CR>
nnoremap <C-p> :Telescope<CR>
