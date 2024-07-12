" <---- General Settings ---->
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

set encoding=UTF-8


" <---- Adding PlugIns ---->

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline' " Airline Status Line
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'sheerun/vim-polyglot'  " Add Default Syntax Highlighting

call plug#end()


" <---- Mapping KeyBinds ---->
nnoremap <C-f> :NERDTreeFocus<CR> " Focus on the NERD Tree window
nnoremap <C-e> :NERDTreeToggle<CR> " Open NerdTree if closed and vice versa
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" " Enter Key selects suggestions
nmap <C-r> :TagbarToggle<CR>

:set completeopt-=preview "For No Previews


" <---- Notes ---->
"  :PlugClean :PlugInstall :UpdateRemotePlugins
"  :CocInstall coc-clang
"  :CocInstall coc-snippets
"  :CocCommand snippets.edit... FOR EACH FILE TYPE


" <---- airline ---->
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif


" <---- Adding Python Intepreter ---->
let g:python3_host_prog='~/.config/nvim_env/bin/python3'


" <---- Auto-Completion of Quotes ---->
inoremap <expr> ' getline('.') =~# '\<C-v>' ? "''" : "'"
inoremap <expr> " getline('.') =~# '\<C-v>' ? '""' : '"'


" <---- Brackets Auto-Pairing and Quotes ---->
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap < <><Left>

