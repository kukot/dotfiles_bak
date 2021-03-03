scriptencoding utf8
set encoding=utf-8
syntax on
" set no compatible
set nocompatible
set path+=**
set wildmenu
set wildignore+=*.o,*.pdf,*.obj,*.jpg,*.png
set number
set relativenumber

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
set showbreak=↪
set bg=dark
colorscheme gruvbox

"plugin using VimPlug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'takac/vim-hardtime'
Plug 'ryanoasis/vim-devicons'
call plug#end()


"configuration
let g:hardtime_default_on= 1
