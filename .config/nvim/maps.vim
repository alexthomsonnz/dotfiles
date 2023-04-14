" Description: Keymaps

nnoremap <S-C-p> "-2p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Select all
nmap <C-a> gg<S-v>G

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit <cr>
nmap <S-Tab> :tabprev<cr>
nmap <Tab> :tabnext<cr>

"------------------------------
" Winows

" Split window
nmap <leader>s :split<Return><C-w>w
nmap <leader>v :vsplit<Return><C-w>w
" Move window
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l


"------------------------------
" Move lines
nnoremap K :m .-2<cr>
nnoremap J :m .+1<cr>
nnoremap <A-Down> :m .+1<cr>
nnoremap <A-Up> :m .-2<cr>


"------------------------------
" Telescope

nnoremap <C-p> :Telescope find_files<cr>
nnoremap <C-S-f> :Telescope live_grep<cr>
nnoremap <C-f> :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>


"------------------------------
" fzf fuzzy find
nnoremap <leader>f :fzf --height 48%<cr> 


"------------------------------
" nvim-tree file explorer
nnoremap <C-b> :NvimTreeToggle <cr>


" Martyn's bangin tips
"------------------------------
" map leader to space 
let mapleader = " "
" map clipboard buffer copy/paste to space+p/y 
map <leader>p "+p
map <leader>y "+y

set showmatch
set tabstop=4
set shiftwidth=4

