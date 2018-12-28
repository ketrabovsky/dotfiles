set nu
set rnu
syntax on
color dracula
set cursorline
set tabstop=4
set shiftwidth=4
set smartindent

"Duplicate line
nnoremap <silent> <C-X> :t.<CR>

" Switch buffers
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <F11> :bp<CR>

" At the end of these line must be extra space
nnoremap <F9> :b 

if has("gui_running")
	set guicursor=n-v-c-i:block-Cursor
	"set guioptions-=m  
	set guioptions-=T  
	set guioptions-=r  
	set guioptions-=L  
endif
