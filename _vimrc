" vimrc by usta

" vim-plug
" URL: https://github.com/junegunn/vim-plug
" hit :PlugInstall when first use
call plug#begin('~/vimfiles/plugged')

" Color themes
Plug 'morhetz/gruvbox'
Plug 'ajmwagar/vim-deus'
Plug 'rhysd/vim-color-spring-night'
Plug 'roosta/srcery'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'rakr/vim-two-firewatch'
Plug 'whatyouhide/vim-gotham'
Plug 'davidklsn/vim-sialoquent'
Plug 'raphamorim/lucario'
Plug 'alessandroyorba/sierra'
Plug 'AlessandroYorba/Arcadia'
Plug 'alessandroyorba/alduin'
Plug 'alessandroyorba/despacio'
Plug 'nightsense/vim-crunchbang'
Plug 'nightsense/seabird'
Plug 'reedes/vim-colors-pencil'
Plug 'joshdick/onedark.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'ayu-theme/ayu-vim'
Plug 'beigebrucewayne/Turtles'
Plug 'jansenfuller/crayon'
Plug 'liuchengxu/space-vim-dark'
Plug 'Badacadabra/vim-archery'
Plug 'dracula/vim'
Plug 'exitface/synthwave.vim'
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
"Plug 'guns/xterm-color-table.vim'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'Yggdroot/indentLine'

" Editing
Plug 'lifepillar/vim-mucomplete'
Plug 'PProvost/vim-ps1'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/dbext.vim'

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

"" Sierra
let g:sierra_Twilight=1 " Sunset, Twilight, Midnight, Pitch, Nevada

"" Arcadia
let g:arcadia_Twilight=1 " Sunset, Twilight, Midnight, Pitch, Nevada

"" Gruvbox
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_invert_indent_guides=0
let g:gruvbox_bold=1
let g:gruvbox_italic=1

"" Srcery
let g:srcery_bold=1
let g:srcery_underline=1
let g:srcery_italic=1

"" Solarized
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1

"" Spring-night
let g:spring_night_kill_italic=0

"" Hybrid-material
let g:enable_bold_font = 1

"" Ayu
let ayucolor="mirage" " light, mirage, dark

"" Pencil
let g:pencil_terminal_italics = 1

"" space-vim-dark
let g:space_vim_dark_background = 235 " default: 234 (range: 233 ~ 238)

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


"------------------------------------------------------------
" Interface settings

if (has("termguicolors"))
  set termguicolors " 24bit truecolors
endif

if has('gui_running')
  set guioptions-=m  " remove menu bar
  set guioptions-=T  " remove toolbar
  set guioptions-=r  " remove right-hand scroll bar
  set guioptions-=L  " remove left-hand scroll bar
  set lines=40 columns=150

  set background=dark
  colorscheme deus

  if has('gui_win32')
    set guifontwide=D2Coding:h10:cDEFAULT
    "set guifont=Ubuntu\ Mono:h12 linespace=0
    "set guifont=Terminus:h12 linespace=0
    set guifont=Hack:h10:cANSI linespace=1
    map <F2> <Esc>:set guifont=Ubuntu\ Mono\ derivative\ Powerline:h12:cANSI linespace=0<CR>
    map <F3> <Esc>:set guifont=Terminus:h12:cANSI linespace=0<CR>
    map <F4> <Esc>:set guifont=Hack:h10:cANSI linespace=1<CR>
    nnoremap <F6> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
    nnoremap <F7> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
    nnoremap <F5> :if &go=~#'L'<Bar>set go-=L<Bar>else<Bar>set go+=L<Bar>endif<CR>
    nnoremap <F8> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
    set shell="%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe"
  endif
else
  set term=xterm
  set t_Co=256
  set background=dark
  colorscheme turtles

  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
  inoremap <Char-0x07F> <BS>
  nnoremap <Char-0x07F> <BS>
endif

" NERDTree
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
"let g:NERDTreeDirArrowExpandable = "\u25BC"
"let g:NERDTreeDirArrowCollapsible = "\u25B6"


"------------------------------------------------------------
" Language specifics
" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Language
" Options are not possible for windows. rename $VIMRUNTIME/lang directory.
set noimd
"set langmenu=en_US.UTF-8
"let $LANG='en_US.UTF-8'
"let $LC_ALL='en_US.UTF-8'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim


"------------------------------------------------------------
" Airline settings

" Theme
let g:airline_theme='term'
let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_detect_modified=1
"let g:airline#extensions#tabline#buffer_nr_show = 1
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
nmap <leader>T :tabnew<CR>
nmap <leader>L :tabnext<CR>
nmap <leader>H :tabprevious<CR>
nmap <leader>X :tabclose<CR>


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

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

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
let g:vim_markdown_folding_disabled = 1
let g:markdown_enable_spell_checking = 0
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_conceal = 0
"let g:markdown_fenced_lanuages = ['sql']

" Python editing
au BufNewFile,BufFilePre,BufRead *.py set tabstop=4 | set softtabstop=4 | set shiftwidth=4 | set textwidth=79 | set fileformat=unix

" NERDTree or Netrw settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree D:\works-db | endif
map <C-Bslash> :NERDTreeToggle<CR>

" Remove trailing whitespace when write file
autocmd BufWritePre * %s/\s\+$//e

" vim 정규표현식으로 Markdown 을 Confluence wiki markup 으로 변환하기
function! MarkdownToWiki()
    execute '%s%^- %* %Ig'
    execute '%s%^  - %  ** %Ig'
    execute '%s%^    - %    *** %Ig'
    execute '%s%^      - %      **** %Ig'
    execute '%s%^        - %        ***** %Ig'
    execute '%s%^          - %          ****** %Ig'
    execute '%s%^            - %            ******* %Ig'
    execute '%s%^# %h1. %Ig'
    execute '%s%^## %h2. %Ig'
    execute '%s%^### %h3. %Ig'
    execute '%s%^#### %h4. %Ig'
    execute '%s%^##### %h5. %Ig'
    execute '%s%^###### %h6. %Ig'
    " replace [title](url) with [title|url]
    execute '%s%\v\[([^]]+)\]\(([^)]+)\)%[\1|\2]%Ig'
    " https://confluence.atlassian.com/display/DOC/Confluence+Wiki+Markup#ConfluenceWikiMarkup-images
    execute '%s%\v\<img src\=\"([^"]+)\"[^>]*\>%!\1!%Ig'
endfunction
command! MarkdownToWiki call MarkdownToWiki()