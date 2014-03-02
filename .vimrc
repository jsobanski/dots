" Enable pathogen for convenient plugin installation
call pathogen#infect() 

" General syntax highlighting
syntax on

" Show on screen artifacts
set number        " line numbers
set laststatus=2  " permanent statusline
set showtabline=2 " permanent tabs

" Behaviours
set hlsearch      " highlighting items while searching
set autoindent    " auto indentation
set expandtab     " insert spaces whenever tab is pressed
set shiftwidth=2  " tab sets 2 spaces
set softtabstop=2

" No line wrapping
set nowrap
 
" Colors
let g:solarized_termcolors=256  " Don't know what it does, but it's needed for good colors
colorscheme solarized           " And using solarized scheme
set background=dark




" Enable vimjde (http://www.vim.org/scripts/script.php?script_id=1213 and http://blog.vinceliu.com/2007/08/vim-tips-for-java-3-use-omni-completion.html) plugin for java
"helptags /usr/share/vim/vim73/doc/
"helptags ~/.vim/doc/



" Syntax highlighting
au BufNewFile,BufRead *.json set filetype=javascript  " JSON files are JavaScript
au BufNewFile,BufRead Capfile set filetype=ruby       " Capistrano file is Ruby
au BufNewFile,BufRead Vagrantfile set filetype=ruby   " Vagrant
au BufNewFile,BufRead *.conf set filetype=apache      " Apache config
au BufNewFile,BufRead *.jad set filetype=java         " Decompiled Java files


" Enable tagbar for some file types
au BufNewFile,BufRead *.java,*.jad :TagbarToggle              " Java family
au BufNewFile,BufRead *.rb,Capfile,Vagrantfile :TagbarToggle  " Ruby family
au BufNewFile,BufRead *.js :TagbarToggle                      " JavaScript family


" Allows for code paste without messing up indentation (without a need for invoking :set paste)
" from https://coderwall.com/p/if9mda
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


" Map F1-F9 keys to tab browsing
map <F1> :tabfirst<CR>
map <F2> <F1>gt
map <F3> <F1>3gt
map <F4> <F1>4gt
map <F5> <F1>5gt
map <F6> <F1>6gt
map <F7> <F1>7gt
map <F8> <F1>8gt
map <F9> <F1>9gt
map <F10> <F1>10gt
map <F12> :tablast<CR>
