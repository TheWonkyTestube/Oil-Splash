"                                _  _             _          ___           __ _       
"                               | \| |___ _____ _(_)_ __    / __|___ _ _  / _(_)__ _  
"                               | .` / -_) _ \ V / | '  \  | (__/ _ \ ' \|  _| / _` | 
"                               |_|\_\___\___/\_/|_|_|_|_|  \___\___/_||_|_| |_\__, | 
"                                                                              |___/  

" Plugins{{{

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
	
	Plug 'kevinhwang91/rnvimr', {'do':'make_sync'}
	Plug 'mkitt/tabline.vim'
	Plug 'vim-jp/vim-vimlparser'
	Plug 'syngan/vim-vimlint'
	Plug 'tpope/vim-surround'						" Surrounds words with brackets, quotes etc
	Plug 'dense-analysis/ale'						" Syntax checker and linter
	Plug 'Lenovsky/nuake'							" Terminal that opens at the bottome of the scree
	Plug 'vim-scripts/taglist.vim'						" Scans files and turns them into lists of handy tags
	Plug 'wfxr/minimap.vim', 						" Minimap for viewing code 
	Plug 'shaunsingh/nord.nvim'						" Colour Scheme
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }			" File searcher	
	Plug 'vim-syntastic/syntastic'						" Syntax Checker
	Plug 'jistr/vim-nerdtree-tabs'						" Also a file tree, except this one works with tabs better
	Plug 'kyazdani42/nvim-web-devicons'					" Handy Icons
	Plug 'ryanoasis/vim-devicons'						" Handy icons
	Plug 'preservim/nerdtree'						" File Tree
	Plug 'mhinz/vim-startify'       	                	        " cool start up screen
	Plug 'Jorengarenar/vim-MvVis'						" move visual selection
	Plug 'vim-airline/vim-airline'   		                       	" Handy bar at the bottom
	Plug 'luochen1990/rainbow'						" Makes brackets rainbow coloured in pairs
	Plug 'psliwka/vim-smoothie'						" Smooth scrolling	
	Plug 'ap/vim-css-color'							" Highlights hex colors
	Plug 'vim-python/python-syntax'						" Python Syntax Highlights
	Plug 'jiangmiao/auto-pairs'						" Auto Pairs brackets and quotes and stuff
	Plug 'preservim/nerdcommenter'						" Comments stuff handily
	Plug 'vim-airline/vim-airline-themes'					" Themes for the handy bar at the bottom
	Plug 'neoclide/coc.nvim', {'branch': 'release'}				" Completion

call plug#end()

"}}}

" General Settings{{{

set encoding=utf-8
scriptencoding utf-8
set relativenumber
set number
set cursorline
set laststatus=2
set cmdheight=1
set scrolloff=18
set termguicolors
set nowrap
set sidescroll=50
set guicursor+=i:ver100-iCursor
syntax on
colorscheme nord
set foldmethod=marker
let g:rainbow_active = 1
au BufRead,BufNewFile *.ttl set filetype=turtle 
hi CocFloating guibg=#010204


"}}}

" airline{{{
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif
let g:airline_theme='deus'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline#extenstions#tabline#enabled=0
let g:airline#extenstions#tabline#buffer_min_count=2
let g:airline#extenstions#tabline#fnamemod=':t'
let g:airline#extenstions#tabline#error_symbol=': '
let g:airline#extenstions#tabline#warning_symbol=': '

"}}}

" Syntastic{{{

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1

"}}}

" Startify{{{

autocmd VimEnter * Startify
let g:startify_padding_left = 85
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_change_to_vcs_root = 1
let g:startify_files_number = 6
let g:startify_change_to_dir = 1
let g:startify_session_before_save = [ 'silent! tabdo NERDTreeClose' ]

let g:startify_lists = [
	  \ { 'type': 'files',     'header': ['												    Recent Files']  },
          \ { 'type': 'sessions',  'header': ['                                                                                             Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['                                                                                             Bookmarks']      },
          \ { 'type': 'commands',  'header': ['                                                                                             Commands']       },
    \ ]

" bookmark examples
let  g:startify_bookmarks =  [
    \ {'z': '~/.config/nvim/init.vim'},
    \ {'x': '~/.config/qtile/config.py'},
    \ {'c': '~/.config/qutebrowser/config.py'},
    \ {'v': '~/colors.py'},
    \ ]

" custom commands
let g:startify_commands = [
    \ {'pu': ['Update Plugins',':PlugUpdate | PlugUpgrade']},
    \ {'n': ['New File',':tabnew']},
    \ {'q': ['Quit',':exit']},
    \ ]

let g:startify_custom_header = [	
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                    ',
\'                                                                                       █████████████████████████████████████████████████████',
\'                                                                                       ██    ███████████████████████████████████████████████',
\'                                                                                       ███    █████   █   █████████   ██████████████████████',
\'                                                                                       ███      ███   ██   ███████   ██   ██████████████████',
\'                                                                                       ███   █   ██   ███   █████   ███████            █████',
\'                                                                                       ███   ██   █   ████   ███   ████   ██   ██  ██  █████',
\'                                                                                       ███   ███  █   █████   █   █████   ██   ██  ██  █████',
\'                                                                                       ███   ████     ██████     ██████   ██   ██  ██  █████',
\'                                                                                       ███   ██████   ███████   ███████   █    ██  ██   ████',
\'                                                                                       █████████████████████████████████████████████████████',
\]

"}}}

" UI (Minimap and Ranger) stuff{{{

" Ranger
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
nnoremap <C-n> :RnvimrToggle <CR> 
tnoremap <C-n> <C-\><C-n>:RnvimrToggle <CR>

" Minimap
let g:minimap_width = 30
let g:minimap_highlight_range=1
nnoremap <C-m> :MinimapToggle <CR> 

" Nuake Terminal
let g:start_insert = 0	
let g:nuake_size = 0.18 
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n><C-W>k<C-W>l

"}}}

" FZF{{{

let g:fzf_layout = {'up':'~90%', 'window':{ 'width': 0.8, 'height': 0.3, }}
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let $FZF_DEFAULT_COMMAND = 'find . -printf "%P\\n"'

"}}}

" COC "{{{

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" }}}

"Aliases{{{

let g:mapleader=","

" Normal Mode Maps
nnoremap	; :
map 		<F6> :Startify <CR>
nmap 		<leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap 	<leader>e :PlugInstall<CR>

" Navigation Commands
nnoremap 	<A-j> <C-W>j
nnoremap 	<A-k> <C-W>k
nnoremap 	<A-h> <C-W>h
nnoremap 	<A-l> <C-W>l
nnoremap 	<TAB> gt
nnoremap 	<S-TAB> gT
nnoremap	<C-t> :Tlist<CR>
nnoremap	<C-s> ysiw
nnoremap	<C-o> :FZF ~<CR>

" Autocommands
autocmd 	FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd 	FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd 	VimEnter * redraw

"}}}






