"8888888b.  888b     d888          888                     
"888   Y88b 8888b   d8888          888                     
"888    888 88888b.d88888          888                     
"888   d88P 888Y88888P888  8888b.  888888 .d88b.  .d8888b  
"8888888P"  888 Y888P 888     '88b 888   d88""88b 88K      
"888        888  Y8P  888 .d888888 888   888  888 'Y8888b. 
"888        888   "   888 888  888 Y88b. Y88..88P      X88 
"888        888       888 'Y888888  'Y888 'Y88P'   88888P' 

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'JuliaEditorSupport/julia-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:tex_conceal='abdmg'
Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'dylanaraps/wal'
Plug 'ycm-core/YouCompleteMe'
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

Plug 'ervandew/supertab'
    let g:SuperTabDefaultCompletionType = '<C-n>'

Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/tagbar'
call plug#end()


augroup VimCompletesMeTex
    autocmd!
    autocmd FileType tex
        \ let b:vcm_omni_pattern = g:vimtex#re#neocomplete
    augroup END
augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
    augroup END


set autoread    " Load extern modifies in file
"
"   Mapeamentos
let mapleader=" "       " Espaço como tecla leader
nnoremap <leader>ec :vs /home/pedro/.vimrc<cr>
nnoremap <leader>rc :source /home/pedro/.vimrc<cr>


set mouse=a
set linebreak
set title
set number              " Mostrar números
set relativenumber
set wildmenu            " Menu com autocompletar aparecendo numa barra acima
syntax on               " mostrar syntax
set hidden              " Ocutar arquivos no buffer
set confirm

set colorcolumn=80

" Busca
set smartcase
set ignorecase          " Ignora sensitive case
set incsearch           " Busca incremental

set expandtab           " Transformar tabs em espaços
set tabstop=4           " Tabs com 4 espaços
set shiftwidth=4        " Identações com 4 espaços
set softtabstop=4       " Apagar os espaços do tab de uma vez
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

"   Powerline
set rtp+=/usr/share/powerline/bindings/vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

" Tema
"colorscheme wal
"set background=dark

set t_Co=256
colors onedark          " Tema
let g:onedark_termcolors=256


" YOUCOMPLETEME
let g:ycm_global_ycm_extra_conf = '/home/pedro/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diadnostics_ui = 0
