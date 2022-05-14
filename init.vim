set number relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set shiftwidth=4
set laststatus=2
set scrolloff=7
set autoindent
set backspace=indent,eol,start
set noshowmode

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Syntax
Plug 'sheerun/vim-polyglot'

" File explorer
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'

call plug#end()

let mapleader=" "

" NERDTree config (NERDTree Menu is open with m)
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" Airline config
let g:airline_powerline_fonts=1

" Theme config
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark
