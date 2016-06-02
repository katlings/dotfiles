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

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Call :PluginInstall

set tabstop=4 shiftwidth=4 smarttab smartcase autoindent nosmartindent hlsearch expandtab
syntax on
map # :set invnumber

" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

" YouCompleteMe options
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
