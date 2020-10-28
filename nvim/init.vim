call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/rainbow_parentheses.vim'
Plug 'pboettch/vim-cmake-syntax'
Plug 'NLKNguyen/papercolor-theme'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'jdsimcoe/panic.vim'
Plug 'morhetz/gruvbox'
Plug 'APZelos/blamer.nvim'
Plug 'dracula/vim', {'as': 'dracula'}

call plug#end()

map <C-n> :NERDTreeToggle<CR>


let g:gruvbox_contrast_light="hard"
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=0
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_undercurl=1
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox


let g:blamer_enabled = 1
let g:ycm_confirm_extra_conf = 0

set spell spelllang=en_us
set spellcapcheck=""


" enable rainbow parentheses for all parentheses round () square [] brances {}
" chevrons <>
au VimEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons


" set the indentation to space and convert the tabs to spaces
set tabstop=2 "convert the tab to 2 spaces
set shiftwidth=2 "indent with 2 white spaces
set expandtab "convert the tab to spaces
set list "show spaces as characters
set lcs=trail:·,tab:»·

set background=dark
set undofile

"hi Normal guibg=NONE ctermbg=NONE

set backup
set rnu

" set 'CursorLine' then clear the highlight of the line then set the style to
" underline
set cursorline
hi clear CursorLine
hi CursorLine cterm=underline
