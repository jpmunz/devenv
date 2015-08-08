execute pathogen#infect()
syntax on
filetype plugin indent on

set ffs=unix
set backupdir=~/.vim-tmp,/var/tmp/
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l"

" Set tabs
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2

" Tab overrides
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType HTML setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" File types
au BufNewFile,BufRead *.hb set filetype=HTML
au BufNewFile,BufRead *.html set filetype=HTML

" Highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" Clear whitespace
command Dw %s/\s\+$\| \+\ze\t//g
command Dn %s/\r$

" Linting
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '!'
let g:syntastic_warning_symbol = '?'

" Python
let g:pymode_folding = 0
let g:syntastic_python_checkers = ['flake8']
ab pdb import pdb; pdb.set_trace() #XXX
