" Connor Shlatz' vim config file
" Updated February 17th, 2023

"=================="
"" === vim-plug === "
"=================="
" Note to self: If you install this later on a new computer, make sure this exists. Make a symlink. asdf sucks
let g:coc_node_path = '/usr/bin/nodejs'
" gem install solargraph - allows for ruby autocomplete
let g:coc_global_extensions = ['coc-solargraph']
call plug#begin()
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

"=================="
"" === Vundle === "
"=================="
execute pathogen#infect()
set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'

"=================="
"" === Basics === "
"=================="

colorscheme badwolf " classic
set background=dark
set autoindent
set relativenumber
set number " Setting both relativenumber and number displays current line number
set tabstop=2 " Two spaces per tab
set expandtab " On pressing tab, use spaces
set tw=10000 " No realistic limit to text width
set nowrap! " Turn off wrapping
set noswapfile
set ic " Search is case insensitive
set nocompatible " allow for tab completion

" Set typescript
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

"==================="
"" === Tagbar   === "
"==================="
map <F2> :TagbarToggle<CR>

"==================="
"" === Buffers  === "
"==================="
" Previous buffer
map <F5> :bp<CR>
" Next buffer
map <F8> :bn<CR>

"==================="
"" === NERDTree === "
"==================="
map <F9> :NERDTreeToggle<CR>

"================="
"" === Airline === "
"================="
let g:airline#extensions#tabline#enabled = 1 " Display all buffers when only tab is open

"================="
"" === Ctrl+P === "
"================="
let g:ctrlp_working_path_mode = 'ra'

"===================="
"" === Ruby/Rails === "
"===================="
let g:rubycomplete_rails = 1
let g:rubycomplete_load_gemfile = 1

"==================="
"" === Typescript === "
"==================="
filetype plugin on
let g:test#javascript#runner = 'jest'

"==================="
"" === Ale      === "
"==================="
" Use emojis as signs like the piece of shit that you are
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '❕'

" Rebind CTRL + j/k to move between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"==================="
"" === GUI      === "
"==================="
" GVIM context menu
silent! aunmenu PopUp.Select\ Word
silent! aunmenu PopUp.Select\ Sentence
silent! aunmenu PopUp.Select\ Paragraph
silent! aunmenu PopUp.Select\ Line
silent! aunmenu PopUp.Select\ Block
silent! aunmenu PopUp.Select\ Blockwise
silent! aunmenu PopUp.Select\ All
set mouse=a
set mousemodel=popup_setpos

set guifont=Monospace\ Bold\ 9

" Hide the background color of these signs
highlight clear ALEErrorSign
highlight clear ALEWarningSign

if $TERM == "xterm-256color"
  set t_Co=256
endif
