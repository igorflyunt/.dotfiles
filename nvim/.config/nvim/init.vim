call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
call plug#end()

let base16colorspace=256
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='base16'
"colorscheme base16-tomorrow-night
colorscheme nord
"hi Normal ctermbg=none
:set nu
:set cursorline
:set guicursor=
:set clipboard+=unnamedplus
map <C-n> :NERDTreeToggle<CR>
