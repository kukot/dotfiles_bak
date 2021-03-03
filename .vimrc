scriptencoding utf8
set encoding=utf-8
syntax on
" set no compatible
set nocompatible

set path+=**
set wildmenu
set wildignore+=*.o,*.pdf,*.obj,*.jpg,*.png
set number

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
set showbreak=↪
set bg=dark
colorscheme gruvbox

" auto mvn compile on changes
