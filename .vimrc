syntax on
" set no compatible
set nocompatible
set relativenumber

set path+=**
set wildmenu
set wildignore+=*.o,*.pdf,*.obj,*.jpg,*.png
set number
set encoding=UTF-8

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
set showbreak=↪
set bg=dark
colorscheme gruvbox

" auto mvn compile on changes
"plugin using VimPlug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'takac/vim-hardtime'
Plug 'ryanoasis/vim-devicons'
call plug#end()


"configuration
let g:hardtime_default_on= 1
