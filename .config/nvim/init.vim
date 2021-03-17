source $HOME/.config/nvim/vim-plug/plugins.vim

set relativenumber
set number


au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html,*.txt
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=120 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix |

colorscheme slate
colorscheme gruvbox

set encoding=utf-8
set laststatus=2
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set hlsearch "highlights matching searches
set showmatch "highlights matching brackets
set wildmenu "graphical auto complete menu

nnoremap <F8> :noh <esc>
nnoremap <F7> :IndentGuidesToggle <esc>
nnoremap <F10> :tabnew <esc>
" nnoremap <C-TAB> :tabn <esc>
nnoremap <F11> :tabp <esc>


autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" Start on vim Startup
let g:indent_guides_enable_on_vim_startup = 0

" The size of the indent line
let g:indent_guides_guide_size = 4

" When it starts
let g:indent_guides_start_level = 1
