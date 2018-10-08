call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'airblade/vim-gitgutter'
call plug#end()
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:nord_italic_comments = 1
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-material-palenight
:set nu
:set cursorline
:set guicursor=
:set clipboard+=unnamedplus
map <C-n> :NERDTreeToggle<CR>
