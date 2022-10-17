" Description: Keymaps

nnoremap <S-C-p> "-2p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Select all
nmap <C-a> gg<S-v>G


" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit <Return>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
"nmap ss :split<Return><C-w>w
" nmap sv :vsplit<Return><C-w>w
" Move window
" nmap <Space> <C-w>w
" map s<left> <C-w>h
" map s<up> <C-w>k
" map s<down> <C-w>j
" map s<right> <C-w>l
" map sh <C-w>h
" map sk <C-w>k
" map sj <C-w>j
" map sl <C-w>l
" Resize window
" nmap <C-w><left> <C-w><
" nmap <C-w><right> <C-w>>
" nmap <C-w><up> <C-w>+
" nmap <C-w><down> <C-w>-


"------------------------------
" Custom functions
nnoremap <A-j> :m .+-1<CR>
nnoremap <A-k> :m .-4<CR>
nnoremap <A-Down> :m .+-1<CR>
nnoremap <A-Up> :m .-4<CR>


"------------------------------
" Telescope

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-S-f> <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


"------------------------------
" fzf fuzzy find
nnoremap <D-p> <cmd>fzf --height 48%<cr>


"------------------------------
" nvim-tree file explorer
nnoremap <C-b> <cmd>:NvimTreeToggle <cr>


" Martyn's tips
"------------------------------
" map clipboard to space+p/y 
let mapleader = " "
map <Leader>p "+p
map <Leader>y "+y

set showmatch
set tabstop=4
set shiftwidth=4

