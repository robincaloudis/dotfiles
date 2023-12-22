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

" Let editor autosave everything
:set autowriteall

" Show trailing whitespaces
set list listchars=tab:\ \ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Provide function to remove trailing whitespaces:
" Source:
" * https://vi.stackexchange.com/a/456
" * https://www.reddit.com/r/neovim/comments/rw1qt7/comment/hr98m5o/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction
command! TrimWhitespace call TrimWhitespace()

" let new split appear on the right or under current window
set splitbelow splitright

set colorcolumn=80
set scrolloff=3 " keep more context when scrolling off the end of a buffer
set laststatus=2 " always show status bar

" synchronize clipboard register and default register in order to allow
" copying across terminals
" (https://vi.stackexchange.com/questions/4600/how-to-copy-across-terminals)
set clipboard^=unnamed

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
" map <leader>tt :vnew term://bash<CR>

" Leaving terminal mode more easy
" If it makes issues, see:
" https://github.com/vim/vim/issues/2216#issuecomment-337566816
:tnoremap <Esc> <C-\><C-n>

" Change 2 split windows from vert to horiz or horiz to vert
map <leader>th <c-w>t<c-w>H
map <leader>tk <c-w>t<c-w>K

" Remove pipes | that act as seperators on splits
" set fillchars+=vert:\

call plug#begin()

" Plug 'https://github.com/vim-airline/vim-airline'
" Plug 'https://github.com/preservim/nerdtree'
" Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'
" LSPs
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
" Auto-completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy'
" Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" noremap <C-p> :Files<cr>

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

" autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox

" Change the active status line's color. As a color scheme is in
" usage, we need to adjust the GUI color settings (guifg and guibg)
" instead of ctermfg and ctermbg.
" Red status bar, white text
" highlight StatusLine guifg=#fb4934 guibg=#282828
" Smother status bar
highlight StatusLine guifg=#bdae93 guibg=#282828

lua require('init')
