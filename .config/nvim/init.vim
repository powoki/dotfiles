let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

set number relativenumber
set omnifunc=ale#completion#OmniFunc
set background=dark
set encoding=utf-8
set number cursorline signcolumn=yes showtabline=2 laststatus=1
set wildmenu
set timeout timeoutlen=500
set autoindent smartindent breakindent
set noshowmode
set cc=180

call plug#begin()
"" General Utilities
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/NERDTree'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'mbbill/undotree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'wincent/terminus'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

"" Languages
Plug 'bfrg/vim-cpp-modern'
Plug 'jceb/vim-orgmode'
Plug 'plasticboy/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'othree/html5.vim'
Plug 'Fymyte/rasi.vim'

"" Colourschemes
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/vim-color-forest-night'
Plug 'alessandroyorba/despacio'
Plug 'morhetz/gruvbox'
Plug 'zeis/vim-kolor'
Plug 'arcticicestudio/nord-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'folke/tokyonight.nvim'

Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 35
let g:indentguides_tabchar = '|'
let g:airline_theme = 'tokyonight'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:deoplete#enable_at_startup = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:indent_guides_enable_on_vim_startup = 1
let g:indentguides_spacechar = '┆'

au TermOpen * setlocal nonumber norelativenumber

map <F5> :Rg<Enter>
map <F6> :History<Enter>
map <F7> :Buffers<Enter>
map <F8> :Files<Enter>
map <F9> :NERDTreeToggle<Enter>

colorscheme tokyonight-night
