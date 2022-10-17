
" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set number
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set mouse=nicr
set shell=fish
set backupskip=/tmp/*,/private/tmp/*

" incremental substitution (neovim)
if has('nvim')
    set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r


" Highlights "
set cursorline
"set cursorcolumn

if &term =~ "screen"
    autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
    autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif


" Imports 
runtime ./plug.vim
if has("unix")
    let s:uname = system("uname -s")
    " Do Mac stuff
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif
endif

runtime ./maps.vim

if !exists('g:vscode')
    lua require('init')
    lua require('lsp-config')
 
    " File types 
    " JavaScript
    au BufNewFile,BufRead *.es6 setf javascript
    " TypeScript
    au BufNewFile,BufRead *.tsx setf typescriptreact
    " Markdown
    au BufNewFile,BufRead *.md set filetype=markdown
    " Flow
    au BufNewFile,BufRead *.flow set filetype=javascript
    autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
    autocmd FileType yaml setlocal shiftwidth=2 ta
    set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

    " Setup ripgrep for Telescope live_grep
    if executable('rg')
        let g:rg_derive_root='true'
    endif
endif

" Syntax theme 
if exists("&termguicolors") && exists("&winblend") && !exists('g:vscode') 
    " Set cursor line color on visual mode
    highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
    highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

    augroup BgHighlight
        autocmd!
        autocmd WinEnter * set cul
        autocmd WinLeave * set nocul
    augroup END

    syntax enable
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
    let g:neosolarized_termtrans=1
    colorscheme NeoSolarized

endif

if exists('g:vscode')
    syntax off
endif

" Extras 
set exrc


" vim: set foldmethod=marker foldlevel=0:
