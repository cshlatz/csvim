" Connor Shlatz' vim config file
" January 6th, 2019
" =============================
" This .vimrc is designed to use the following plugins
" Pathogen, NERDTree, Airline, YouCompleteMe, Badwolf, Omnisharp, Syntastic
" Better than Jeremy's .vimrc
" =============================

"==================="
"" === Pathogen === "
"==================="
execute pathogen#infect()

"=================="
"" === Basics === "
"=================="
color badwolf " classic
set autoindent
set relativenumber " Cool mode activated
set number " Setting both relativenumber and number displays current line number
set tabstop=4 " Two spaces per tab
set expandtab " On pressing tab, use spaces
set tw=10000 " No realistic limit to text width
set wrap! " Turn off wrapping
set noswapfile " booooo
set list
set listchars=tab:>-

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

"==================="
"" === Syntastic === "
"==================="
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"================="
"" === Airline === "
"================="
let g:airline#extensions#tabline#enabled = 1 " Display all buffers when only tab is open

