" -- Basic Vim settings --
inoremap jj <ESC>

" enable line numbers
:set number
" use relative numbers
:set relativenumber
" tab and indentation
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
" use mouse
:set mouse=a

" let new split appear on the right or under current window
set splitbelow splitright

set colorcolumn=80
set scrolloff=3 " keep more context when scrolling off the end of a buffer
set laststatus=2 " always show status bar

" Remap splits navigation to CTRL + hjkl
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Make adjusting split sizes friendly
noremap <silent> <c-left> :vertical resize +3<CR>
noremap <silent> <c-right> :vertical resize -3<CR>
noremap <silent> <c-up> :resize +3<CR>
noremap <silent> <c-down> :resize -3<CR>


" Open terminal inside vim
map <leader>tt :vnew term://bash<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <leader>th <c-w>t<c-w>H
map <leader>tk <c-w>t<c-w>K

" Remove pipes | that act as seperators on splits
" set fillchars+=vert:\

call plug#begin()

" Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
" Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

nnoremap <C-o> :Files<cr>

let g:fzf_layout = { 'down': '40%' }

"nnoremap <C-f> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
"syntax enable
"colorscheme OceanicNext
autocmd vimenter * ++nested colorscheme gruvbox
