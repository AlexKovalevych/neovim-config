" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeToggle' }

Plug 'elixir-lang/vim-elixir'
Plug 'awetzel/nvim-rplugin'
Plug 'thinca/vim-ref'
" Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'slashmili/alchemist.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
" Plug 'ryanoasis/vim-devicons'
Plug 'mhartington/oceanic-next'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'neomake/neomake'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'elmcast/elm-vim'
Plug 'troydm/zoomwintab.vim'
Plug 'moll/vim-bbye'

" Add plugins to &runtimepath
call plug#end()

let g:deoplete#enable_at_startup = 1

let g:nerdtree_tabs_open_on_console_startup = 1

let g:enable_bold_font = 1

" Icons
" let g:webdevicons_enable = 1
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_enable_airline_tabline = 1
" let g:webdevicons_enable_airline_statusline = 1
" let g:WebDevIconsOS = 'Darwin'

" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
" set encoding=utf8
" let g:airline_powerline_fonts = 1

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left><Paste>

" nnoremap Q @q   " Use Q to execute default register.

" Fuzzy search
" nnoremap <C-p> :call fzf#run({'sink': 'tabedit'})<CR>
nnoremap <Leader>q :Bdelete<CR>

" Airline {
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline#extensions#tabline#right_sep = ''
  let g:airline#extensions#tabline#right_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_theme= 'oceanicnext'
  let g:airline#extensions#branch#enabled = 1
" }

" neomake {
  autocmd! BufWritePost * Neomake
  nnoremap <Leader>l :lopen<CR>
" }
" neomake {
  let g:netrw_liststyle=3 " tree (change to 0 for thin)
  let g:netrw_banner=0    " no banner
  let g:netrw_altv=1      " open files on right
  let g:netrw_winsize=80  " only use 20% screen for netrw
  " FIXME: Preview opens to left and is very narrow
  let g:netrw_preview=1   " open previews vertically
" }

" Move between buffers
nmap <Leader>l :bnext<CR>
nmap <Leader>h :bprevious<CR>

" Colorscheme options.
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

nnoremap gb :ls<CR>:b<Space>

" Elixir
"
" let g:elixir_showerror = 1
" let g:elixir_autobuild = 1

" Indent
let g:indent_guides_auto_colors = 0
let g:indentLine_enabled = 1
let g:indentLine_faster = 1
let g:indentLine_concealcursor = 0
let g:indentLine_color_gui = '#444444'


" NERDTree
let g:NERDTreeWinSize=26
nnoremap <F8> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/_build/*,*/node_modules/*.so,*.swp,*.zip,*.o,*.a,*_test,*.prefs,.project,.cproject

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn|DS_Store))$'
"let g:ctrlp_user_command = 'ag --ignore={build,.git,.project,*.o,*.d} %s -l --hidden -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_switch_buffer=0

set clipboard+=unnamedplus

" clear trailing spaces on save
autocmd BufWritePre * StripWhitespace

let g:elm_format_autosave = 1
