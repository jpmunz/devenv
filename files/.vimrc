syntax on
filetype plugin indent on

set ffs=unix
set backupdir=~/.vim-tmp,/var/tmp/
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l"

ab pdb import pdb; pdb.set_trace() #XXX

" Set tabs
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2

" Tab overrides
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 foldmethod=syntax foldlevel=99
autocmd FileType HTML setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" File types
au BufNewFile,BufRead *.hb set filetype=HTML
au BufNewFile,BufRead *.html set filetype=HTML

" Highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" Clear whitespace
command Dw %s/\s\+$\| \+\ze\t//g
command Dn %s/\r$

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" LocalVim
let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
