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

filetype plugin on

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Set generic quick keys
inoremap <Space><Space> <Esc>/<==><Return>"_c4l
vnoremap <Space><Space> <Esc>/<==><Return>"_c4l
map <Space><Space> <Esc>/<==><Return>"_c4l
inoremap ;gui <==>

" specific javascript hotkeys
autocmd FileType javascript inoremap ;it <Esc>0i<Tab>it('',<Space>function()<Space>{<Return><Tab><Tab><==><Return><Tab>});<Esc>2k2lci'
autocmd FileType javascript inoremap ;get cy.get()<==><Esc>5hci(
autocmd FileType javascript inoremap ;de <Esc>0idescribe('',<Space>function()<Space>{<Return><Tab><==><Return>});<Esc>2k7lci'
autocmd FileType javascript inoremap ;bf <Esc>0i<Tab>before(function()<Space>{<Return><Tab><Tab><Return><Tab>});<Esc>k3li
autocmd FileType javascript inoremap ;be <Esc>0i<Tab>beforeEach(function()<Space>{<Return><Tab><Tab><Return><Tab>});<Esc>k3li
autocmd FileType javascript inoremap ;var <==><Esc>/var<Return>Novar<Space><Space>=<Space>'<==>';<Esc>9hi
