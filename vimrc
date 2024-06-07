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

set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
"set showbreak=↪
let &showbreak="\u21aa "
if has('gui_running')
    set guifont=JetBrainsMono\ NF:h10
endif
set bg=dark

"TAB configuration
"set tabstop=4
set softtabstop=0 shiftwidth=4 expandtab
set autoindent

"plugin using VimPlug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'bfrg/vim-cpp-modern'
Plug 'preservim/nerdtree'
"Plug 'takac/vim-hardtime'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'posva/vim-vue'
Plug 'jiangmiao/auto-pairs'
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'udalov/kotlin-vim'
Plug 'jdhao/better-escape.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox

"configuration
"let g:hardtime_default_on= 1
"NERDTree config
nnoremap <C-n> :NERDTreeToggle<CR>
"enable vim-iced's default key mapping
let g:iced_enable_default_key_mappings = v:true
let g:better_espace_intervavl = 200

" cursor setting specific to iTerm
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
