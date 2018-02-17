set nocompatible              " be iMproved, required

" General Settings
set ruler
set relativenumber 
set showcmd

set tabstop=4
set shiftwidth=4
set expandtab
"create fuzzy finder
" provide tab completion for all file related tasks
set path+=**

"Shows all files when we tab complete
set wildmenu

"Set statusline
set statusline+=%F
set laststatus=2

" highlight cursorline
set cursorline
syntax on
filetype plugin on 

"generic navigation tools
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
map <Space><Space> <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>

" specific shortkeys for js
autocmd FileType javascript inoremap ;it <Esc>0i<Tab>it('',<Space>function()<Space>{<Return><Tab><Tab><++><Return><Tab>});<Esc>2k2lci'
autocmd FileType javascript inoremap ;get cy.get()<++><Esc>5hci(
autocmd FileType javascript inoremap ;de <Esc>0idescribe('',<Space>function()<Space>{<Return><Tab><++><Return>});<Esc>2k7lci'
autocmd FileType javascript inoremap ;bf <Esc>0i<Tab>before(function()<Space>{<Return><Tab><Tab><Return><Tab>});<Esc>k3li
autocmd FileType javascript inoremap ;be <Esc>0i<Tab>beforeEach(function()<Space>{<Return><Tab><Tab><Return><Tab>});<Esc>k3li
autocmd FileType javascript inoremap ;var <++><Esc>/var<Return>Novar<Space><Space>=<Space>'<++>';<Esc>9hi


