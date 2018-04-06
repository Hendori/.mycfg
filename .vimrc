set nocompatible
set cursorline
syntax on

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


set laststatus=2

" Set Statusline
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 


" Set autoread
set autoread



augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "begins the vim plugins
Plugin 'git://github.com/tpope/vim-surround.git' " surround plugin
Plugin 'Valloric/YouCompleteMe'
call vundle#end() " End the plugins
filetype plugin indent on    " required


" Set generic quick keys
inoremap <Space><Space> <Esc>/'.l:branchname.' ':''<Return>"_c4l
vnoremap <Space><Space> <Esc>/<==><Return>"_c4l
map <Space><Space> <Esc>/<==><Return>"_c4l
inoremap ;gui <==>


filetype plugin on

" Specific cypress hotkeys
autocmd FileType javascript inoremap ;it <Esc>0i<Tab>it('',<Space>function()<Space>{<Return><==><Return>});<Esc>2k2lci'
autocmd FileType javascript inoremap ;get <Esc>0icy.get()<==><Esc>5hci(
autocmd FileType javascript inoremap ;de <Esc>0idescribe('',<Space>function()<Space>{<Return><==><Return>});<Esc>2k7lci'
autocmd FileType javascript inoremap ;bf <Esc>0i<Tab>before(function()<Space>{<Return><Return>});<Esc>k3li
autocmd FileType javascript inoremap ;be <Esc>0ibeforeEach(function()<Space>{<Return><Tab><Tab><Return><Tab>});<Esc>k3li
autocmd FileType javascript inoremap ;var <==><Esc>/var<Return>Novar<Space><Space>=<Space>'<==>';<Esc>9hi
