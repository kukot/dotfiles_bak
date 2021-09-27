scriptencoding utf8
"set encoding=utf-8
syntax on
" set no compatible
set nocompatible
set path+=**
set wildmenu
set wildignore+=*.o,*.pdf,*.obj,*.jpg,*.png,*.class
set number
set relativenumber

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
"set showbreak=↪
let &showbreak="\u21aa "
if has('gui_running')
    set guifont=JetBrainsMono\ NF:h10
endif
set bg=dark
"colorscheme gruvbox

"TAB configuration
"set tabstop=4
set softtabstop=0 shiftwidth=4 expandtab
set autoindent

"set coc node executable path explicitly
let g:coc_node_path='$HOME/.nvm/versions/node/v14.17.6/bin/node'
"plugin using VimPlug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/nvim-cmp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'mfussenegger/nvim-jdtls'
call plug#end()
"setting gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
"configuration
"let g:hardtime_default_on= 1
"NERDTree config
nnoremap <C-n> :NERDTreeToggle<CR>
"enable vim-iced's default key mapping
let g:iced_enable_default_key_mappings = v:true
let g:better_espace_intervavl = 200

"vim airline & theme
let g:airline_theme='solarized'
"
"language server configuration
set completeopt=menu,menuone,noselect
"lua require("lsp-config")
"eclipse jdt language server
"if has('nvim-0.5')
"  augroup lsp
"    au!
"    au FileType java lua require('jdtls').start_or_attach({cmd = {'java-lsp.sh'}})
"  augroup end
"endif
"coc.nvim config
source ~/.config/nvim/coc.vim
