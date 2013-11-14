" Misc
set nu

" Case insensitive search
set ic



" PATHOGEN
"
execute pathogen#infect()

"generate helptags for everything in ‘runtimepath’
call pathogen#helptags()
filetype plugin indent on


" sets how many lines of history VIM has to remember
set history=700


" Set to auto read when a file is changed from the outside
set autoread

"Set comment color to green
highlight Comment ctermfg=green

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Highlight search results
set hlsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show indexing brackets when text indicator is over them 
set showmatch



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme vibrantink 
set background=dark
highlight Comment ctermfg=green
hi Pmenu ctermbg=black
hi PmenuSBar ctermbg=237


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

"Be smart when using tabs ;)
set smarttab

"Auto indent
set ai

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Return to last edit position when opening files (You want this!)
 autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
" """"""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Show full file path on status line
set statusline+=%F  

""""""""""""""""""""""""""""""
"Use clipboard buffer
set clipboard+=unnamed

" Mapping for  matching brackets
"
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>< <><ESC>i

"Auto-reload .vimrc
"
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"SHIT! powerline still doesn't work
"


let g:Powerline_symbols = 'fancy'
set nocompatible 


"Study
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn


"F1-F12 mappings
"
map <F3> :NERDTreeToggle <CR><Esc>
imap <F3> :NERDTreeToggle <CR><Esc>
map <F4> :set cursorcolumn! <CR><Esc>
map <F5> :set cursorline! <CR><Esc>
map <F6> :set spell! <CR><Esc>
map <F7> :FufFile <CR><Esc>
map <F8> :set hlsearch! <CR><Esc>
map <F9> :AutoComplPopDisable <CR><Esc>
imap <F9> <Esc>:AutoComplPopDisable <CR><Esc>i<Right>


"nnoremap <F9> :call ToggleAutoCompl()<cr>
"
"function" FoldColumnToggle()
"    if &foldcolumn
"        setlocal foldcolumn=0
"    else
"        setlocal foldcolumn=4
"    endif
"endfunction

" Airline

"""""""""""""
"map <C-Enter> :set hlsearch! <CR><Esc>


"Enable airline plugins

let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
"Change symbols

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ' 


" NERD_tree
