" set leader key
let g:mapleader = "\<Space>"

" debug mode for coc (required to run :call coc#client#open_log())
" let g:node_client_debug=1

autocmd FileType netrw setl bufhidden=wipe " Avoids netrw always stuck open
set autoread " trigger `autoread` when files changes on disk
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
  " autocmd FileChangedShellPost * " notification after file change
  "   \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
set complete+=kspell                    " set spell spelllang=en_gb
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_gb
syntax enable                           " Enables syntax highlighing
" set path+=**
set hidden                              " Required to keep multiple buffers open multiple buffers
set tw=80                               "Set max textwidth to 80 characters
set encoding=UTF-8                      " The encoding displayed 
" set guifont=Hack\ Nerd\ Font\ 11        " Set font
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
"set iskeyword+=-                      	" treat dash separated words as a word text object
" set mouse=a                             " Enable your mouse
"set splitbelow                          " Horizontal splits will automatically be below
"set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
"set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " tab occupies 2 spaces
set expandtab                           " Converts tabs to spaces
" set softtabstop=2                       " 
set shiftwidth=2                        " Governs width of normal mode command '>>'
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set autoindent                          " Maintain indentation of previous line
set smartindent                         " Indenting to comply with c syntax
" set nosmartindent                       " prevents extra indenting 
" set nocindent                             " Better than smartindent
" set indentexpr=""                       " Was changing line indenting?
" set indentkeys=""                       " Was changing line indenting?
set laststatus=0                        " Always display the status line
set relativenumber                      " Relative Line numbers
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
" set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tab bar at top 
set noshowmode                          " We don't need to see things like -- INSERT -- 
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
" set backupdir=~/.config/nvim/backup
" set directory=~/.config/nvim/swap//
set scrolloff=7

" let &backupdir = expand('~/.config/nvim/backup//') " Folder for backup files
" if !isdirectory(&backupdir) | call mkdir(&backupdir, "p") | endif
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory
" set filetype on

" makes vim look for filetype specific settings in nvim/ftplugin/ and
" sets indenting by file type
" filetype plugin indent on
filetype plugin on

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" ABANDONED

" set no indent key triggers
" set indentkeys-={

" For highlighting yanked text in nvim (but didn't work)
" augroup highlight_yank
"     autocmd!
"     au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
" augroup END

" You can't stop me
" cmap w!! w !sudo tee %

" set viminfo='100,n$HOME/.vim/files/info/viminfo

" set wildmenu                            " autocomplete in command mode
" set wildmode=list:full                  " settings for wildmenue
" set indentexpr= '-'
" set comments=fb:*,fb:-,fb:+,n:>
" set formatoptions=tcroqn
" let g:vim_indent_cont = shiftwidth() * 3
