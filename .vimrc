" Connor Shlatz' vim config file
" Updated April 10th, 2020

"=================="
"" === Basics === "
"=================="

colorscheme jellybeans " classic
set autoindent
set relativenumber
set number " Setting both relativenumber and number displays current line number
set tabstop=4 " Two spaces per tab
set expandtab " On pressing tab, use spaces
set tw=10000 " No realistic limit to text width
set wrap! " Turn off wrapping
set noswapfile
set ic " Search is case insensitive

"==================="
"" === PHP      === "
"==================="
au FIleType php set omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone,preview
" Instruct phpcomplete to show phpdocs
let g:phpcomplete_parse_docblock_comments = 1
" Look for variables in ctags
let g:phpcomplete_search_tags_for_variables = 1
set tags+=~/publish/ezpublish/tags "v1
set tags+=/home/crs/code/accelerator-v2/tags "v2

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

let g:syntastic_php_checkers=['php'] " v1 doesnt play nicely with phpcs

"================="
"" === Airline === "
"================="
let g:airline#extensions#tabline#enabled = 1 " Display all buffers when only tab is open

"================="
"" === Airline === "
"================="
let g:ctrlp_clear_cache_on_exit = 0 " Cache persists between sessions. Large codebases slow it down to a crawl

"==================="
"" === Pathogen === "
"==================="
execute pathogen#infect()
