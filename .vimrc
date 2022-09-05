call plug#begin()

Plug 'Galooshi/vim-import-js'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'towolf/vim-helm'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline'
Plug 'mtth/scratch.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-endwise'
Plug 'ap/vim-css-color'

" disabled
" Plug 'takac/vim-hardtime'
" Plug 'tpope/vim-bundler'
" Plug 'vim-ruby/vim-ruby'
" Plug 'ludovicchabant/vim-gutentags'

" Colorschemes
Plug 'sts10/vim-pink-moon'
Plug 'lmintmate/blue-mood-vim'
Plug 'kaicataldo/material.vim'
Plug 'dracula/vim'
Plug 'caglartoklu/qbcolor.vim'
Plug 'sjl/badwolf'
Plug 'doums/darcula'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'joshdick/onedark.vim'

call plug#end()

set background=dark
" colorscheme gruvbox
" colorscheme everforest
colorscheme onedark

let mapleader=","
" fzf
nnoremap <leader>h :History<CR>
nnoremap <leader>i :Ag<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>p :FZF<CR>
nnoremap <leader>s :Scratch<CR>
nnoremap <leader>u :Commands<CR>
nnoremap <leader>t :tabnew<CR>

" resize
nnoremap <leader>7 :res +2<CR> " increase pane by 2
nnoremap <leader>8 :res -2<CR> " decrease pane by 2
nnoremap <leader>9 :vertical res +2<CR> " vertical increase pane by 2
nnoremap <leader>0 :vertical res -2<CR> " vertical decrease pane by 2

" ale

set nocompatible

set incsearch              " While typing a search, show where the pattern matches
set ignorecase             " Ignoring case in a pattern:
set hlsearch               " Highlights all the search pattern matches:
set smartcase              " While typing a search, show where the pattern matches:

set showmatch              " Show matching braces when cursor is over them:
set number relativenumber  " Display the relative line number
set showmode               " Always show the mode
set showcmd                " Display incomplete commands
set incsearch              " Do incremental searching (as you type)
set hlsearch               " Highlight the latest search pattern
set laststatus=2           " Always show a status line
set cursorline             " Highlight the screen line of the cursor:

set splitbelow             " Creates new horizontal windows at the bottom:
set splitright             " Creates new vertical windows at the right:

set termguicolors          " It makes iTerm2 to show colors correctly

set expandtab
set shiftwidth=2

set wildmode=list:longest,full
set wildmenu

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list

set backspace=indent,eol,start

"https://evertpot.com/osx-tmux-vim-copy-paste-clipboard/
set clipboard=unnamed

"folding options
set foldmethod=indent
set foldminlines=2
set nofoldenable
set tabstop=2
set expandtab

" better vertial movement for wrapped lines
nnoremap j gj
nnoremap k gk

" autocenter after search
nnoremap n nzz
nnoremap N Nzz

" indentation
set autoindent
set termguicolors

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:coc_global_extensions = ['coc-tsserver', 'coc-solargraph']

nnoremap <silent><nowait><space>k :call CocAction('doHover')<CR>
nnoremap <silent><nowait><space>f :call CocAction('format')<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <c-space> coc#refresh()

hi CocSearch ctermfg=12 guifg=#18A3FF
hi CocMenuSel ctermbg=109 guibg=#13354A

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>f  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" remove underline errors
highlight! link ALEError LineNrBelow

" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
