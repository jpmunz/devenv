execute pathogen#infect()
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

" Linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

  " Javascript
  let g:syntastic_javascript_checkers = ['eslint']
  autocmd BufNewFile,BufRead *.json let g:syntastic_javascript_checkers = ['']

  " Python
  let g:pymode_folding = 0
  let g:syntastic_python_checkers = ['flake8']

" Folding
:nnoremap <space> za
