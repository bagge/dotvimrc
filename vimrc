set nocompatible
source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
behave xterm

" Highlight for trailing white space
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen


" Syntax highlight
syntax on
colorscheme default
set background=dark

" Tab width
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab

" Something
set nocompatible
set showmatch
set ruler
set showcmd
set incsearch
set hlsearch

" Formatting
set autoindent
set smartindent

" Mouse
set mouse=a

" tags
set tags+=/usr/include/tags
set tags+=/src/vas/tags

" Line number
set number

if has("win32") || has("win64")
   set directory=\vimswap
   set backupdir=\vimswap
   set undodir=\vimswap
else
   set directory=~/.vimcache
   set backupdir=~/.vimcache
   set undodir=~/.vimcache
end

" Incremental searches
set incsearch
set hlsearch

" Mark lines longer than 80 characters
" Use colorcolumn if the feature exists, available since VIM 7.3.
if exists("+colorcolumn")
highlight ColorColumn ctermbg=grey ctermfg=black
set colorcolumn=80
else
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.*/
endif

" Show trailing white space (more than one space, one single space is ok)
:match ExtraWhitespace /\s\s\+$/

" shorthand tabnew
" nmap nt :tabnew<CR>
" cmap nt tabnew 

nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_Auto_Open = 1
"let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1

" Keybindings for NERDTree
nnoremap <silent> <F7> :NERDTreeFind<CR>
nnoremap <silent> <F6> :NERDTreeClose<CR>

" Python wants spaces instead of tabs
autocmd FileType python set expandtab

" To reset focused window to the edited file after open.
"autocmd VimEnter * exe 1 . "wincmd w"

let mapleader = "§"
imap jj <Esc> 
nnoremap <Leader>l :set invlist
nnoremap <Leader>h :nohlsearch
nnoremap <Leader>w :set invwrap

set ignorecase
set infercase
set smartcase
set smarttab
set scrolloff=3
