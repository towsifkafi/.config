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
" set cursorline

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
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'windwp/nvim-ts-autotag'

    "Plug 'othree/html5.vim'
    "Plug 'pangloss/vim-javascript'
    "Plug 'evanleck/vim-svelte', {'branch': 'main'}

    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
    Plug 'kdheepak/lazygit.nvim'

    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

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


lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  --require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  --  capabilities = capabilities
  --}
EOF
