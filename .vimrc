set nocompatible
"set cursorline
syntax on
set t_Co=256

" Set ruler
set ruler
set showcmd
set relativenumber

" Set tab
set tabstop=4
set shiftwidth=4
set expandtab

" Set fuzzy finder
set path+=**
set wildmenu

" Set highlight search
set hlsearch

" Set commands 
command! Maketags !ctags -R .
"com! FormatJSON %!python -m json.tool

" Set autoread
set autoread

"augroup myvimrc
"    au!
"    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
"augroup END


" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "begins the vim plugins
Plugin 'https://github.com/dylanaraps/wal.vim.git'
" Generic plugins
Plugin 'git://github.com/tpope/vim-surround.git' " surround plugin

" Plugin 'Valloric/YouCompleteMe'
" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" gitgutter
Plugin 'https://github.com/airblade/vim-gitgutter'
"Haskell plugins
Plugin 'gmarik/Vundle.vim'
"Plugin 'mlent/ale'
 " Has a small change for multi-line ghc errors, see below
Plugin 'w0rp/ale'
Plugin 'Shougo/vimproc'
" GHC specific plugin
Plugin 'eagletmt/ghcmod-vim'
"Showing whitespaces
Plugin 'ntpeters/vim-better-whitespace'
call vundle#end() " End the plugins
filetype plugin indent on    " required
colorscheme wal
set updatetime=1000    

let g:ale_fix_on_save = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1

" set mapleader to ;
let mapleader=';'

filetype plugin on

" Automate for whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_safe=1

" Set generic quick keys

" ALE lint keys
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Specific cypress hotkeys
autocmd FileType javascript inoremap <leader>it <Esc>0i<Tab>it('',<Space>function()<Space>{<Return><Return>});<Esc>2k2lci'
autocmd FileType javascript inoremap <leader>get <Esc>0icy.get()<==><Esc>5hci(
autocmd FileType javascript inoremap <leader>de <Esc>0idescribe('',<Space>function()<Space>{<Return><==><Return>});<Esc>2k7lci'
autocmd FileType javascript inoremap <leader>bf <Esc>0i<Tab>before(function()<Space>{<Return><Return>});<Esc>k3li
autocmd FileType javascript inoremap <leader>be <Esc>0ibeforeEach(function()<Space>{<Return><Tab><Tab><Return><Tab>});<Esc>k3li
autocmd FileType javascript inoremap <leader>var <==><Esc>/var<Return>Novar<Space><Space>=<Space>'<==>';<Esc>9hi

" Specific haskell hotkeys
autocmd FileType haskell inoremap <leader>. -><Space>
autocmd FileType haskell inoremap <leader>, <-<Space>
autocmd FileType nnoremap <buffer> <leader>? :call ale#cursor#ShowCursorDetail()<cr>
nnoremap <Leader>ht :GhcModType<cr>
nnoremap <Leader>htc :GhcModTypeClear<cr>

autocmd! bufwritepost .vimrc source %
