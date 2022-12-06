" Connor Shlatz' vim config file
" Updated December 6th, 2022

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
Plugin 'valloric/youcompleteme'

"=================="
"" === Basics === "
"=================="

colorscheme badwolf " classic
set autoindent
set relativenumber
set number " Setting both relativenumber and number displays current line number
set tabstop=2 " Two spaces per tab
set expandtab " On pressing tab, use spaces
set tw=10000 " No realistic limit to text width
set wrap! " Turn off wrapping
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

" Hide the background color of these signs
highlight clear ALEErrorSign
highlight clear ALEWarningSign
