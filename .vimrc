" ----------------------------------------------------------------------------
" Plug
" ----------------------------------------------------------------------------
" Load vim-plug

if empty(glob("~/.vim/autoload/plug.vim"))
	execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Vim Latex integration
Plug 'vim-latex/vim-latex'

" Colorschemes
"Plug 'captbaritone/molokai'
"Plug 'chriskempson/vim-tomorrow-theme'
Plug 'altercation/vim-colors-solarized'
"Plug 'fxn/vim-monochrome'
"Plug 'chriskempson/base16-vim'

" Syntax
Plug 'tpope/vim-git', { 'for': 'git' }
"Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
"Plug 'xsbeats/vim-blade', { 'for': 'blade' }
"Plug 'qrps/lilypond-vim', { 'for': 'lilypond' }
"Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Completion
"Plug 'mattn/emmet-vim', { 'for': 'html' }

" Make % match xml tags
"Plug 'edsono/vim-matchit', { 'for': ['html', 'xml'] }

" Make tab handle all completions
Plug 'ervandew/supertab'

" Syntastic: Code linting errors
"Plug 'scrooloose/syntastic', { 'for': ['php', 'python', 'javascript', 'css'] }

" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" Fancy statusline
Plug 'bling/vim-airline'

" Fuzzy file opener
Plug 'kien/ctrlp.vim'
"Plug 'rking/ag.vim'

" Rename files from within vim
"Plug 'AlexJF/rename.vim', { 'on': 'Rename' }
"Plug 'gcmt/taboo.vim'

" Split navigation that works with tmux
Plug 'christoomey/vim-tmux-navigator'

" Change brackets and quotes
Plug 'tpope/vim-surround'

" Make vim-surround repeatable with .
Plug 'tpope/vim-repeat'

" Select indent objects
Plug 'michaeljsmith/vim-indent-object'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'

" Run Python tests in tmux splits
" Plug 'captbaritone/projects/vim-vigilant', { 'for': 'python' }
"Plug '~/projects/vim-vigilant', { 'for': 'python' }
"Plug 'benmills/vimux', { 'for': ['python', 'javascript'] }

" Python completion and tag navigation
"Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" Take notes and keep todo lists in vim
Plug 'vimwiki/vimwiki'

" Find the class/method based on cursor position
"Plug 'vim-scripts/pythonhelper'

" 'Vastly improved Javascript indentation and syntax support in Vim'
"Plug 'pangloss/vim-javascript'

" Visualize undo tree
Plug 'mbbill/undotree'

" Other plugins require curl
if executable("curl")

    " Webapi: Dependency of Gist-vim
    Plug 'mattn/webapi-vim'

    " Gist: Post text to gist.github
    Plug 'mattn/gist-vim'
endif

filetype plugin indent on " required!
call plug#end()


syntax enable

set laststatus=2

set grepprg=grep\ -nH\ $*

let g:tex_flavor='latex'

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"More natural splits
set splitbelow
set splitright
