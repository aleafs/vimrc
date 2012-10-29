source $VIMRUNTIME/vimrc_example.vim 

map <F6> :tabnext<CR>
map <F5> :tabprevious<CR>
map <F3> :tabnew<CR>
map <F9> :make %<<CR>
map gf :tabnew <cfile><CR>

syntax on
filetype on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

if has("autocmd")
	autocmd BufNewFile,BufRead *.json setfiletype json
	autocmd BufNewFile,BufRead *.rss setfiletype xml

	autocmd FileType javascript,json,sql setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType php,sh setlocal ts=4 sts=4 sw=4 expandtab
endif

set autoindent
set cindent

set foldmethod=marker

set showmatch
set nobackup

set fileencodings=ucs-bom,utf-8,chinese,prc,taiwan,latin-1
set fileencoding=utf-8

set encoding=utf-8
set termencoding=utf-8 
set ffs=unix,dos,mac
set ff=unix

set nocp
set hls
colorscheme desert
color mango

set columns=140
" set guioptions-=T

set number
" set nowrap

" statusline
set laststatus=2
set statusline=%f\ %m%y[%{&ff}:%{&fenc}]%=%10.(\ %l,%c%V%)\ %5.(%P%)

