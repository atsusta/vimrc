" vimrc by usta

" vim-plug
" URL: https://github.com/junegunn/vim-plug
" hit :PlugInstall when first use

let plugpath='~/.vim/plugged'

if (&shell=='C:\WINDOWS\system32\cmd.exe')
  let plugpath='~/vimfiles/plugged'
endif

silent! call plug#begin(plugpath)

" Color themes
Plug 'morhetz/gruvbox'
Plug 'ajmwagar/vim-deus'
Plug 'srcery-colors/srcery-vim'
Plug 'reedes/vim-colors-pencil'
Plug 'joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'dracula/vim'
Plug 'exitface/synthwave.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'Nequo/vim-allomancer'
Plug 'fcpg/vim-farout'
"Plug 'koirand/tokyo-metro.vim'
"Plug 'cseelus/vim-colors-lucid'
Plug 'Badacadabra/vim-archery'
"Plug 'alessandroyorba/sierra'
Plug 'rhysd/vim-color-spring-night'
"Plug 'YorickPeterse/happy_hacking.vim'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'rakr/vim-two-firewatch'
"Plug 'whatyouhide/vim-gotham'
"Plug 'davidklsn/vim-sialoquent'
"Plug 'raphamorim/lucario'
"Plug 'AlessandroYorba/Arcadia'
"Plug 'alessandroyorba/alduin'
"Plug 'alessandroyorba/despacio'
"Plug 'nightsense/vim-crunchbang'
"Plug 'nightsense/seabird'
"Plug 'nightsense/seagrey'
"Plug 'tyrannicaltoucan/vim-deep-space'
"Plug 'ayu-theme/ayu-vim'
"Plug 'beigebrucewayne/Turtles'
"Plug 'jansenfuller/crayon'
Plug 'cocopon/iceberg.vim'
"Plug 'fneu/breezy'
"Plug 'gummesson/stereokai.vim'
"Plug 'altercation/vim-colors-solarized'
"Plug 'bcicen/vim-vice'
"Plug 'sonjapeterson/1989.vim'
"Plug 'alessandroyorba/monrovia'
"Plug 'alessandroyorba/sidonia'
"Plug 'chmllr/elrodeo-vim-colorscheme'

" Interface
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'severin-lemaignan/vim-minimap'
Plug 'terryma/vim-smooth-scroll'
Plug 'mhinz/vim-signify'
"Plug 'airblade/vim-gitgutter'
"Plug 'RRethy/vim-illuminate'
"Plug 'guns/xterm-color-table.vim'
"Plug 'Yggdroot/indentLine'

" Editing
Plug 'lifepillar/vim-mucomplete'
Plug 'PProvost/vim-ps1'
Plug 'gabrielelana/vim-markdown'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/dbext.vim'
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'


call plug#end()


"------------------------------------------------------------
" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
" References: https://dougblack.io/words/a-good-vimrc.html

"------------------------------------------------------------
" Features
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on


"------------------------------------------------------------
" Color schemes

"" Gruvbox
let g:gruvbox_contrast_dark='medium' " light, medium, hard
let g:gruvbox_invert_indent_guides=0
let g:gruvbox_bold=1
let g:gruvbox_italic=1

"" Srcery
let g:srcery_bold=1
let g:srcery_underline=1
let g:srcery_italic=1
let g:srcery_inverse_matches=1
let g:srcery_undercurl=1

"" space-vim-dark
let g:space_vim_dark_background = 235 " default: 234 (range: 233 ~ 238)

"" PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 0,
  \       'allow_bold': 1,
  \       'allow_italic': 1
  \     }
  \   }
  \ }

" Show color column as area, not line
set colorcolumn=120
let &colorcolumn=join(range(120,999),",")
"highlight colorcolumn ctermbg=155
"highlight colorcolumn guibg=#dfffaf


"------------------------------------------------------------
" Indent plugin settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_tab_guides = 0
let g:indent_guides_start_level = 1

hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4


"------------------------------------------------------------
" Interface settings

" Switch to english when command mode
set noimd

" NERDTree
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
"let g:NERDTreeDirArrowExpandable = "\u25BC"
"let g:NERDTreeDirArrowCollapsible = "\u25B6"

" ctrlP
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'a'

if has('gui_running')
  if (has('termguicolors'))
    set termguicolors " 24bit truecolors
  endif
  set guioptions-=m  " remove menu bar
  set guioptions-=T  " remove toolbar
  set guioptions-=r  " remove right-hand scroll bar
  set guioptions-=L  " remove left-hand scroll bar
  set lines=40 columns=150

  set background=dark
  colorscheme srcery
  autocmd VimEnter * if argc() != 0 || exists("s:std_in")
        \ | colorscheme farout | AirlineTheme random
        \ | endif

  if has('gui_win32')
    set guifontwide=D2Coding:h10:cDEFAULT
    "set guifont=Ubuntu\ Mono:h12 linespace=0
    "set guifont=Terminus:h12 linespace=0
    set guifont=Iosevka:h10:cANSI linespace=1
    map <F2> <Esc>:set guifont=Iosevka:h10:cANSI linespace=0<CR>
    map <F3> <Esc>:set guifont=Terminus:h12:cANSI linespace=0<CR>
    map <F4> <Esc>:set guifont=Hack:h10:cANSI linespace=1<CR>
    nnoremap <F6> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
    nnoremap <F7> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
    nnoremap <F5> :if &go=~#'L'<Bar>set go-=L<Bar>else<Bar>set go+=L<Bar>endif<CR>
    nnoremap <F8> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
  endif

  " Language
  " Options are not possible for windows. rename $VIMRUNTIME/lang directory.
  set langmenu=en_US.UTF-8
  let $LANG='en_US.UTF-8'
  let $LC_ALL='en_US.UTF-8'

else
  " term: amiga, beos-ansi, ansi, pcansi, win32, vt320, vt52, xterm, iris-ansi, debug, dumb
  if exists("$SHELL")
    set term=xterm-256color
  endif

  " Hyper™ and git for windows
  au BufNew,BufNewFile &shell=sh
        \ set term=xterm
  au BufNew,BufNewFile &shell=C:\Windows\system32\cmd.exe
        \ set term=win32

  set t_Co=256
  set background=dark
  colorscheme PaperColor

  let $LANG="en_US.UTF-8"

  "let &t_AB="\e[48;5;%dm"
  "let &t_AF="\e[38;5;%dm"
  inoremap <Char-0x07F> <BS>
  nnoremap <Char-0x07F> <BS>
endif


"------------------------------------------------------------
" Language specifics
" Encoding
set encoding=utf-8
set fileencoding=utf-8

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


"------------------------------------------------------------
" Airline settings

" Let vim do not show mode
set noshowmode

" Theme
let g:airline_theme='random'
"if has('gui_running')
  let g:airline_powerline_fonts = 1
"else
"  let g:airline_powerline_fonts = 0
"endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_detect_modified=1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#show_splits = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Useful shortcuts with Airline
let g:mapleader = ","

" Buffers
nmap <leader>n :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>x :bp <BAR> bd #<CR>
nmap <leader>^ :bfirst<CR>
nmap <leader>$ :blast<CR>

" Tabs
nmap <leader>t :tabnew<CR>
nmap <leader>L :tabnext<CR>
nmap <leader>H :tabprevious<CR>
nmap <leader>X :tabclose<CR>


"------------------------------------------------------------
" Smooth scroll
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


"------------------------------------------------------------
" Miscellaneous shortcuts

" Toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" Toggle vimdiff
nmap <leader>f :windo diffthis<CR>
nmap <leader>F :windo diffoff<CR>


"------------------------------------------------------------
" Must have options
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
set nomodeline


"------------------------------------------------------------
" Usability options
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" 'press <Enter> to continue'
set cmdheight=1

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F12> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F12>

" Line wrapping
set wrap

" Vim loves to redraw the screen during things it probably doesn't need to—
" like in the middle of macros. This tells Vim not to bother redrawing
" during these scenarios, leading to faster macros.
set lazyredraw

" When your cursor moves over a parenthesis-like character, the matching
" one will be highlighted as well.
set showmatch

" Search as characters are entered
set incsearch

"------------------------------------------------------------
" Indentation options
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=2


"------------------------------------------------------------
" Mappings
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>


"------------------------------------------------------------
" Autocmd options & functions
"
" Markdown editing
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 0
let g:markdown_enable_input_abbreviations = 0
let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_new_list_item_indent = 2
"let g:markdown_fenced_lanuages = ['sql']

" Python editing
au BufNewFile,BufFilePre,BufRead *.py
      \ set tabstop=4
      \ | set softtabstop=4
      \ | set shiftwidth=4
      \ | set textwidth=79
      \ | set fileformat=unix

" Miscellaneous
au BufNewFile,BufRead *.cnf set syntax=conf
au BufNewFile,BufRead *.err set syntax=messages
au BufNewFile,BufRead *.pwsh set syntax=ps1
au BufNewFile,BufRead *.sql.txt set syntax=sql

" NERDTree or Netrw settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | edit D:\works-db\personnel\wid.md | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | edit D:\works-db\tips\tips-devops.md | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | edit D:\works-db\tips\tips-linux.md | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | edit D:\works-db\tips\tips-mysql.md | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | edit D:\works-db\tips\tips-nmb.md | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | edit D:\works-db\tips\tips-sqlserver.md | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | edit D:\works-db\tips\tips.md | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree D:\works-db | endif
map <C-\> :NERDTreeToggle<CR>

" Remove trailing whitespace when write file
autocmd BufWritePre * %s/\s\+$//e

" Copy search hits
function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/gne
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

