
" ########## Plugins ##########

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'pangloss/vim-javascript'      "Javascript support
Plug 'HerringtonDarkholme/yats.vim' "Typescript and TSX support
Plug 'maxmellon/vim-jsx-pretty'     "JSX support
Plug 'jparise/vim-graphql'          "GraphQL support
call plug#end()

" Line numbers
set number relativenumber
set nu rnu

" terminal
set mouse=nv

" Encoding for icons
set encoding=UTF-8

" Indents
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

" search
set smartcase

" Colors

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" Messes with textedit
set hidden

" Messes with language servers
set nobackup
set nowritebackup

" Sets the command height for more space
set cmdheight=2

set updatetime=300


" ########## KEYBINDS ##########

" navigation keybinds
nnoremap j <Left>
nnoremap k <Down>
nnoremap l <Up>
nnoremap ; <Right>

" terminal binds
tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <C-q> :belowright split +term <CR> :resize 20 <CR>


" coc keybinds
nmap <leader>ca <Plug>(coc-codeaction)          " Show code action menu
nmap <leader>fc <Plug>(coc-fix-current)         " Fix current issue

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" number keybind
nnoremap <silent> <C-n> :set relativenumber!<cr>

" nerdtree keybinds
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" telescope keybinds
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope git_files<CR>


" Theme

set background=dark
colorscheme palenight

" ########## Plugin Config ##########
let g:lightline = { 'colorscheme': 'palenight'}
let g:airline_theme = "palenight"

lua require("init")

let g:javascript_plugin_jsdoc = 1   "JavaDoc support
