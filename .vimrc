set nocompatible "IMproved, required
"This command makes vim start a file with all folds closed
"set foldlevelstart=0
"-----------------------------------------------------------
"Plugins
"-----------------------------------------------------------{{{
"Autoinstall vim plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"set the runtime path to include Vundle and initialise
call plug#begin('~/.vim/plugged')

"Git wrapper
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'

"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Patched fonts needed to display fancy airline
"Copy the desired font(s) in .local/share/fonts
"set the required font(s) in the console settings
Plug 'powerline/fonts'

Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'

Plug 'lifepillar/vim-cheat40'

Plug 'mattn/emmet-vim'

Plug 'easymotion/vim-easymotion'

Plug 'KeitaNakamura/neodark.vim'

Plug 'desert256.vim'

Plug 'rainux/vim-desert-warm-256'

Plug 'rakr/vim-one'

call plug#end()

"NERDTree configuration
let NERDTreeShowHidden=1
"Get rid of the "? show help...
let NERDTreeMinimalUI=1
"NERDTree Default window size
"let g:NERDTreeWinSize = 25
"Make NERDTree window resizable
"let NERDTreeWinSize=1

"Configuration for airline

"always dispalays airline
set laststatus=2

let g:airline#extensions#tabline#enabled = 1

let g:airline_theme = 'onedark'

let g:airline_powerline_fonts = 1
 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

   " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    " airline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''

"Mappings
nnoremap <Space> i    
inoremap jj <esc>

"visual bell for errors
set visualbell

"line number and relative line number
set number
set relativenumber

"Shares the system clipboard
set clipboard=unnamed

"Set one line to be always shown below or above the cursor
set scrolloff=1

"Set to split always right
set splitright

"Set correct colors
if &term == "rxvt-unicode-256color" || &term == "xterm-256color"
    set t_Co=256
    colorscheme one
    set background=dark
    "colorscheme neodark
    "To use 256-color in both of vim and gvim:
    "let g:neodark#use_256color = 1 " default: 0
    "To use your default terminal background:
    "let g:neodark#terminal_transparent = 1 " default: 0
    syntax on
else
    set t_Co=8
endif