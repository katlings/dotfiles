" Show trailing whitepace and spaces before a tab:
""""""""highlight ExtraWhitespace ctermbg=red guibg=red
""""""""autocmd Syntax * syn match ExtraWhitespace /\s\+\%#\@<!$/ containedin=ALL

""""""""augroup python
""""""""  autocmd!

""""""""  autocmd FileType python set cinwords=if,elif,else,for,while,try,except,finally,def,class
""""""""  autocmd FileType python autocmd BufWritePre * :%s/\s\+$//e

""""""""  let python_space_errors = 1
""""""""  setlocal nospell
""""""""augroup END

""""""""let g:flake8_ignore="E501,E111,E221"

execute pathogen#infect()

set tabstop=4 shiftwidth=4 smarttab smartcase autoindent nosmartindent hlsearch
syntax on
map # :set invnumber
filetype plugin indent on
