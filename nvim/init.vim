"""""general"""""
syntax on
set ma
set mouse=a
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set number 
set relativenumber
set noswapfile
set scrolloff=7
set foldlevelstart=99
"""""general"""""

"""""plugins"""""
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'gruvbox-community/gruvbox'
" file navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
" status bar
Plug 'vim-airline/vim-airline'
" auto complete
Plug 'jiangmiao/auto-pairs'
" markdown preview
Plug 'ellisonleao/glow.nvim'
" lsp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

" grammar
Plug 'rhysd/vim-grammarous'
" todo comments
Plug 'folke/todo-comments.nvim'

Plug 'yggdroot/indentline'
Plug 'frazrepo/vim-rainbow'

Plug 'sheerun/vim-polyglot'

call plug#end()
"""""plugins"""""


colorscheme gruvbox


"""""personal mappings"""""
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :Rg<CR>
" C specific
au FileType c nnoremap <silent> ;m :Focus make build -j 10<CR>:Dispatch<CR>
au FileType c nnoremap <silent> ;r :Focus make run -j 10<CR>:Dispatch<CR>
au BufEnter,BufNew *.c nnoremap <silent> ;p :e %<.hpp<CR>
au BufEnter,BufNew *.h nnoremap <silent> ;p :e %<.cpp<CR>
"""""personal mappings"""""

"""""go"""""
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
"""""go"""""

"""""vim rainbow"""""
let g:rainbow_active = 1
"""""vim rainbow"""""

lua require("fack")
