" Show trailing whitepace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+\%#\@<!$/ containedin=ALL

augroup python
  autocmd!

  autocmd FileType python set cinwords=if,elif,else,for,while,try,except,finally,def,class
  autocmd FileType python autocmd BufWritePre * :%s/\s\+$//e

  let python_space_errors = 1
  setlocal nospell
augroup END

execute pathogen#infect()

let g:flake8_ignore="E501,E111,E221"

set tabstop=8 shiftwidth=2 smarttab expandtab softtabstop=2 smartcase autoindent nosmartindent
syntax on
map # :set invnumber