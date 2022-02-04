call plug#begin()

" Visual
Plug 'rafi/awesome-vim-colorschemes'		" Pacote de temas
Plug 'Yggdroot/indentLine'			" Linhas de identação
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme onedark
set t_Co=256



let g:indentline_enabled = 1 
map <leader>ti :IndentLinesToggle<cr>

set number
set relativenumber
set expandtab

set mouse=a

let mapleader = " "


set laststatus=2
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts=1
let g:airline_statusline_ontop=0
let g:aitline_theme='base16_twilight'

" Busca
set smartcase
set ignorecase
set incsearch

set confirm

set autoread
set hidden
set colorcolumn=80

set list



" Tab Settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Fix splitting 
set splitbelow splitright


map <leader>wq :wq<cr>
map <leader>Q :q!<cr>
map <leader>ce :vsplit ~/.config/nvim/init.vim<cr>
map <leader>cs :source ~/.config/nvim/init.vim<cr>
map <F5> <ESC>:w<CR>:!clear; python %<CR>


let g:indentline_showFirstIndentLevel = 1
let g:indentline_fileType = ['html', 'py', 'cpp', 'c']
let g:indentline_fileTypeExclude = ["text", "help", "undotree", "diff", "coc-explorer"]
let g:indentline_bufTypeExclude = ["help", "terminal"]
let g:indentLine_char = '|'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_color_term = 239

let g:indentLine_setConceal = 1
let g:indentLine_concealcursor = "incv" 
let g:indentLine_conceallevel = 2

"set guifont = Hack\ Nerd\ Font\ Mono\ JBM\ Ligatured:h12
