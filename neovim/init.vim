"		 _ __   ___  _____   _(_)_ __ ___   
"		| '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
"		| | | |  __/ (_) \ V /| | | | | | |
"		|_| |_|\___|\___/ \_/ |_|_| |_| |_|
"																																																																																																		|_| |_|          |___/ 

"######################################################################
" VIM PLUGIN MANAGER USING VIM-PLUG
"######################################################################


call plug#begin('~/.config/nvim/plugged')

"Vim Nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" The sparkup vim script is in a subdirectory of this repo called vim.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'} 

"Solarized Theme
Plug 'altercation/vim-colors-solarized'

"color scheme gruvbox
Plug 'morhetz/gruvbox'

"MOLOKAI Theme
Plug 'tomasr/molokai'

"VIM Power line
Plug 'powerline/powerline'

"CsApprox Plugin
Plug 'vim-scripts/CSApprox'

"CTRLP 
Plug 'kien/ctrlp.vim'

"VIM-Airline
Plug 'bling/vim-airline'

"Vim Surround
Plug 'tpope/vim-surround'

" Emmet for html and css plugin 
Plug 'mattn/emmet-vim'

"Vim Fugitive
Plug 'tpope/vim-fugitive'

"vim nerdcommenter
Plug 'scrooloose/nerdcommenter'

"vim Pairs
Plug 'jiangmiao/auto-pairs'

"vim RAILS
Plug 'tpope/vim-rails'

"snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

"Vim Ruby
Plug 'vim-ruby/vim-ruby'

call plug#end()





"######################################################################
" VIM Configuration 
"######################################################################


set number	" set/viewing number in vim
set nobackup	" No Need backup for confirmation *.swp. its bullshit!
set nowritebackup	" its same!!!! *.swp. its bullshit!
set noswapfile     
set history=50
set ruler	" show the cursor position all the time
set showcmd	" display incomplete commands
set incsearch	" do incremental searching
set autowrite	" Automatically :write before running commands
set hlsearch	" hinghlight searh


" UTF 8, Please!
set termencoding=utf-8 
set encoding=utf-8

"Fast way gor normal mode using jk  
imap jk <ESC>																 



"Stopping search highlight using Ctrl-q
map <C-q> /#$%^!(<CR>

"Update neovim configuration
map <leader>so :source ~/.config/nvim/init.vim<CR>

"Fast Shortcut for ~/.vimrc
nmap <silent> <leader>ev :e ~/.config/nvim/init.vim<CR> 

"For transparency
hi Normal ctermbg=none

"For configuration
if has('nvim')
    runtime! plugin/python_setup.vim
  endif


set showmode " always show what mode we're currently editing in
set nowrap " don't wrap lines
set tabstop=4 " a tab is four spaces
set nosmarttab " Require this for editing tab in neovim!
set tags=tags
set softtabstop=4 " when hitting <BS>, pretend like a tab is removed, even if spaces
retab 2


set shiftwidth=4 " number of spaces to use for autoindenting
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set number " always show line numbers
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'

set backspace=indent,eol,start " allow backspacing over everything in insert mode

set timeout timeoutlen=200 ttimeoutlen=100

"set visualbell " don't beep
"set noerrorbells " don't beep
set autowrite "Save on buffer switch
set mouse=a

"Fast Save using short key.
nmap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <S-h> :vertical resize +5<cr>
nmap <S-l> :vertical resize -5<cr>


"nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Enable filetype plugins
filetype plugin on
filetype indent on
syntax enable
syntax on 

inoremap <c-s> <Esc>:Update<CR>
autocmd BufWinEnter,WinEnter term://* startinsert

:tnoremap <C-q> <C-\><C-n>
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l






"######################################################################
" Copy , Paste, and Select All Configuration 
"######################################################################

" snippet for select all text
nmap <C-a> <esc>ggVG<CR>
imap <C-a> <esc>ggVG<CR>

"Copy Paste Configuration
vmap <C-c> "+y
vmap <C-x> "+x
vmap <C-v> "+gP

nmap <C-c> "+y
nmap <C-x> "+x
nmap <C-v> "+gP

imap <C-c> <ESC>"+y
imap <C-x> <ESC>"+x
imap <C-v> <ESC>"+gP





"######################################################################
" Themes and Colorscheme 
"######################################################################

se t_Co=16
set background=dark
colorscheme gruvbox 
let g:solarized_termcolors=256




"######################################################################
" Application Configuration 
"######################################################################


"NERDtree config
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle /home/indra/<CR>

"AUTO PAIRS Config
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" emmet config
let g:user_emmet_mode='a'    "enable all function in all mode

"Powerline Configuration
set guifont=menlo\ for\ powerline:h16
let g:airline_powerline_fonts = 0.75
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

"let g:airline_powerline_fonts = 1

set laststatus=2
"let g:bufferline_echo = 0

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set guifont=Liberation_Mono_for_Powerline:h10
set guifont=Liberation\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

"let g:airline_theme             = 'solarized'

"Black theme
let g:airline_theme             = 'gruvbox'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Buffer Configuration
 \l       : list buffers
 \b \f \g : go back/forward/last-used
 \1 \2 \3 : go to buffer 1/2/3 etc

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>/
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P





"######################################################################
" Ruby On Rails Convigurations 
"######################################################################

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1


"ErB file setting
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby



"######################################################################
" PHP Convigurations 
"######################################################################

"PHP PLUGIN Config
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"


" Better indent support for PHP by making it possible to indent HTML sections
" as well.
if exists("b:did_indent")
  finish
endif


" This script pulls in the default indent/php.vim with the :runtime command
" which could re-run this script recursively unless we catch that:
if exists('s:doing_indent_inits')
  finish
endif
let s:doing_indent_inits = 1
runtime! indent/html.vim
unlet b:did_indent
runtime! indent/php.vim
unlet s:doing_indent_inits


function! GetPhpHtmlIndent(lnum)
  if exists('*HtmlIndent')
    let html_ind = HtmlIndent()
  else
    let html_ind = HtmlIndentGet(a:lnum)
  endif
  let php_ind = GetPhpIndent()
  " priority one for php indent script
  if php_ind > -1
    return php_ind
  endif
  
  if html_ind > -1
    if getline(a:num) =~ "^<?" && (0< searchpair('<?', '', '?>', 'nWb')
          \ || 0 < searchpair('<?', '', '?>', 'nW'))
      return -1
    endif
    return html_ind
  endif
  return -1
endfunction
setlocal indentexpr=GetPhpHtmlIndent(v:lnum)
setlocal indentkeys+=<>>

