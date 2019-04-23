call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'yuttie/hydrangea-vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'romainl/flattened'
Plug 'arcticicestudio/nord-vim'
Plug 'jnurmine/Zenburn'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

colorscheme nord
colorscheme zenburn


set number
set relativenumber
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A<esc>
nnoremap <leader>fed :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>fer :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>fs :w<esc>
nnoremap <leader>ft :NERDTreeToggle<cr>
nnoremap <leader>/ :nolsearch<cr>
nnoremap <leader>tr :terminal<cr> <i>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>wd :q!<cr>
nnoremap <leader>1 :tabn1<cr>
nnoremap <leader>2 :tabn2<cr>
nnoremap <leader>3 :tabn3<cr>
nnoremap <leader>4 :tabn4<cr>
nnoremap <leader>5 :tabn5<cr>
nnoremap <leader>6 :tabn6<cr>
nnoremap <leader>7 :tabn7<cr>
nnoremap <leader>8 :tabn8<cr>
nnoremap <leader>9 :tabn9<cr>
