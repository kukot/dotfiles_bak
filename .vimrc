scriptencoding utf8
set encoding=utf-8
syntax on
" set no compatible
set nocompatible
set path+=**
set wildmenu
set wildignore+=*.o,*.pdf,*.obj,*.jpg,*.png,*.class
set number
set relativenumber

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
"set showbreak=↪
let &showbreak="\u21aa "
if has('gui_running')
    set guifont=JetBrainsMono\ NF:h10
endif
set bg=dark
colorscheme gruvbox

"TAB configuration
"set tabstop=4
set softtabstop=0 shiftwidth=4 noexpandtab
set autoindent

"plugin using VimPlug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'takac/vim-hardtime'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"change working directory
"configuration
let g:hardtime_default_on= 1
nnoremap <C-n> :NERDTreeToggle<CR>
