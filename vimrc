" Select OS
if has("win32") || has("win32unix")
  let g:OS#name = "win"
  let g:OS#win = 1
  let g:OS#mac = 0
  let g:OS#unix = 0
elseif has("mac")
  let g:OS#name = "mac"
  let g:OS#mac = 1
  let g:OS#win = 0
  let g:OS#unix = 0
elseif has("unix")
  let g:OS#name = "unix"
  let g:OS#unix = 1
  let g:OS#win = 0
  let g:OS#mac = 0
endif
if has("gui_running")
  let g:OS#gui = 1
else
  let g:OS#gui = 0
  set term=screen-256color
endif

"if $TERM =~ '^screen-256color'
  map <Esc>OH <Home>
  map! <Esc>OH <Home>
  map <Esc>OF <End>
  map! <Esc>OF <End>
"endif

source $HOME/.vim/settings.vim
source $HOME/.vim/map.vim
source $HOME/.vim/bundles.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/autocmd.vim

" fix unicode problem
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" to set the cursor
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

