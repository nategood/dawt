syntax enable

" Show matching blocks
set showmatch

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"
" colorscheme asu1dark
colorscheme desert

"
set nobackup
set nowb
set noswapfile

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Use a line under the cursor
set cursorline
hi cursorline guibg=#333333

set nowrap
