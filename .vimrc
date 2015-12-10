"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'cohama/lexima.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'sudo.vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Initialize
set title
set number
set ruler
set expandtab
set laststatus=2
set ts=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set smartcase
set wildmenu
set showcmd
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
colorscheme molokai
syntax on
highlight LineNr ctermfg=43

" Key map

inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-h> <BS>
inoremap <C-d> <Del>

" Auto reload .vimrc
augroup source_vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" persistent undo
if has('persistent_undo')
    set undodir=~/.vim/history
    set undofile
endif

" save cursor position 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\""

" vim-indent-guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_enable_on_vim_startup = 1

" fugitive
autocmd QuickFixCmdPost *grep* cwindow
set statusline+=%{fugitive#statusline()}
