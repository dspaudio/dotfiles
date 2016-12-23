set nocompatible              " be iMproved, required
so ~/.vim/plugins.vim

syntax enable
set background=dark
set backspace=indent,eol,start
let mapleader=','
set number
set linespace=15
if has('mouse_sgr')
   set ttymouse=sgr
endif

"--------------Visuals---------------"
colorscheme hybrid_material
set t_CO=256
set guifont=Fira_Code:h15
set guioptions-=e

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi vertsplit guifg=bg guibg=bg

"--------------Searching-------------"
set hlsearch
set incsearch

"--------------Split Management------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"--------------Mappings--------------"
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <D-1> :NERDTreeToggle<cr>



"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"/
"/ NerdTree
"/
let NERDTreeHijackNetrw = 0


"/
"/ Airline
"/
language ko_KR.UTF-8
let g:Airline_symbols = 'virtualenv'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:enable_bold_font = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "hybrid"
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep=''
let g:airline_right_sep=''

"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

