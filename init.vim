call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'yuttie/hydrangea-vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'romainl/flattened'
Plug 'arcticicestudio/nord-vim'
Plug 'jnurmine/Zenburn'
Plug 'christoomey/vim-tmux-navigator'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html'] }

Plug 'sbdchd/neoformat'
Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()

colorscheme nord
colorscheme zenburn

"Autorun NERDTree upon booting nvim
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set number
set relativenumber
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A<esc>
nnoremap <leader>fed :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>fer :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>fs :w<esc>
nnoremap <leader>ft :NERDTreeToggle<cr>
nnoremap <leader>mf :Neoformat<cr>
"Remove highlighted search"
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>tr :terminal<cr><i>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>wd :q!<cr>

"Change to tab via <SPC> [n]
nnoremap <leader>1 :tabn1<cr>
nnoremap <leader>2 :tabn2<cr>
nnoremap <leader>3 :tabn3<cr>
nnoremap <leader>4 :tabn4<cr>
nnoremap <leader>5 :tabn5<cr>
nnoremap <leader>6 :tabn6<cr>
nnoremap <leader>7 :tabn7<cr>
nnoremap <leader>8 :tabn8<cr>
nnoremap <leader>9 :tabn9<cr>
nnoremap <leader>- :$tabnew<cr>

"To map <Esc> to exit terminal-mode:
:tnoremap <Esc> <C-\><C-n>

"Change to next / prev tab
nnoremap <TAB>l :+tabnext<cr>
nnoremap <TAB>h :-tabnext<cr>

"Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

"Parens
 
"Elixir config"

"Prettier config

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

nmap <leader>pr <Plug>(Prettier)
" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'
