if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

if has("nvim")
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'folke/lsp-colors.nvim'
    Plug 'hrsh7th/cmp-buffer' " nvim-cmp source for buffer words
    Plug 'hrsh7th/cmp-nvim-lsp' " nvim-cmp source for neovim's built-in LSP
    Plug 'hrsh7th/nvim-cmp' " Completion
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'overcache/NeoSolarized'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'famiu/nvim-reload'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'APZelos/blamer.nvim'
    Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
endif

Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()

