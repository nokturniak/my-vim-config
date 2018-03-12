"
" pathogen config
"
execute pathogen#infect()


"
" disable arrow keys
"
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"
" allow normal navigation in wrapped lines
"
map j gj
map k gk


"
" font look and alignment
"
syntax on

set guifont=Ubuntu\ Mono\ 13
set guioptions-=m,T,L,R,r

set antialias
set number
set nowrap
set laststatus=2
set encoding=utf-8


"
" colors
"
color hybrid
set hlsearch
set colorcolumn=80
set t_Co=256


"
" wildmenu
"
set wildmenu
set wildmode=longest,list,full


"
" tabs
"
set noexpandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start


"
" swap and backup
"
set noswapfile
set nobackup


"
" shortcuts
"
map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <leader>sr :SignifyRefresh<CR>
map <silent> <C-r> :CtrlPBuffer<CR>


"
" set filetype for some extensions
"
autocmd BufRead,BufNewFile *.props set filetype=xml
autocmd BufRead,BufNewFile *.vcxproj set filetype=xml
autocmd BufRead,BufNewFile *.sln set filetype=xml
autocmd BufRead,BufNewFile *.man set filetype=xml
autocmd BufRead,BufNewFile *.frame set filetype=glsl
autocmd BufRead,BufNewFile *.comp set filetype=glsl
autocmd BufRead,BufNewFile *.ray set filetype=glsl
autocmd BufRead,BufNewFile *.vert set filetype=glsl
autocmd BufRead,BufNewFile *.rdef set filetype=glsl
autocmd BufRead,BufNewFile out2.txt set filetype=pdump

filetype plugin indent on

let g:ctrlp_working_path_mode = 0

"
" easy p4 edit
"
function! P4Edit()
    silent !p4 edit %
    redraw!
endfunction

"
" refresh ctags
"
function! ReTags()
    silent !ctags -R %
    redraw!
endfunction

nnoremap <silent> <leader>pe :call P4Edit()<CR>
nnoremap <silent> <leader>rt :call ReTags()<CR>
