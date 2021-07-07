call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'preservim/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'bitc/vim-bad-whitespace'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'mechatroner/rainbow_csv'
Plug 'tpope/vim-tbone'
Plug 'roxma/vim-tmux-clipboard'
Plug 'digitaltoad/vim-pug'
Plug 'iloginow/vim-stylus'
" Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'vimsence/vimsence'
" Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'minimalist'
let g:rainbow_active = 1

set guicursor=
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set hlsearch
set incsearch
set encoding=utf8
set signcolumn=yes
set conceallevel=0
set showcmd
set foldmethod=manual
set noshowmode
syntax on
filetype on
colorscheme Tomorrow-Night-Bright

let g:indentLine_setConceal = 1
let g:indentLine_color_term = 239

let NERDSpaceDelims=1
let g:NERDCustomDelimiters={
	\ 'javascriptreact': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
	\ 'typescriptreact': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

nmap <leader>rn <Plug>(coc-rename)

highlight SignColumn ctermbg=black guibg=black
highlight Normal ctermbg=black
highlight Pmenu ctermbg=233 ctermfg=white
highlight PmenuSel ctermbg=234 ctermfg=white
highlight PmenuSbar ctermbg=65
highlight PmenuThumb ctermbg=23
highlight LineNr ctermbg=black
highlight Visual ctermbg=233

autocmd BufNewFile,BufRead *.pug setfiletype pug
autocmd BufNewFile,BufRead *.R,*.Rout,*.r,*.Rhistory,*.Rt,*.Rout.save,*.Rout.fail setfiletype R

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * if eval("@%") == "" | wincmd w | endif

let g:gitgutter_realtime = 1

autocmd BufWinEnter * silent! loadview
autocmd BufWinLeave * mkview

