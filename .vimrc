execute pathogen#infect()
syntax on
filetype plugin indent on
set nu
set rnu
set hlsearch
set tabstop=4
set shiftwidth=4
set smartindent
set laststatus=2

"command! Maketags !ctags -R .

"highlight LineNr ctermbg=black

let g:airline_theme = 'dark'
"let g:airline_theme = 'dracula'

" Toggle NERDTree
map <C-o> :NERDTreeToggle<CR>

nmap <C-k> :noh<Return> 
nmap <C-x> :t.<Return> 
nmap <F2> :set relativenumber!<CR>
nmap <F3> :set list!<CR>

" Function for toggling colorColumn
fun! ToggleCC()
  if &cc == ''
    set cc=80
  else
    set cc=
  endif
endfun

nnoremap <C-I> :call ToggleCC()<CR>

nmap Y y$
"set cursorline
"Default colorscheme
"colorscheme base16-default-dark
"colorscheme dracula

" Airline plugin theme
"let g:airline_theme = 'dracula'

" YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_echo_current_diagnostic = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_enable_diagnostic_signs = 0
set completeopt -=preview

" This part is used by Gvim
if has('gui_running')
	colorscheme dracula
	set cursorline
	set guifont=Inconsolata\ 12
	highlight TODOs ctermbg=red ctermfg=yellow term=bold,italic
	set guicursor=n-v-c-i:block-Cursor
	set guioptions-=m
	set encoding=utf-8
	setglobal fileencoding=utf-8 bomb
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	set laststatus=2
endif
