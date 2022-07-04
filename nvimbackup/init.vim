set ts=4
set ignorecase
set number 
set mouse=a
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode
set ma

call plug#begin('~/vim/plugged')

" Temas

" -------------------------
" IDE2
Plug 'easymotion/vim-easymotion'
"Plug 'ctrlpvim/ctrlp.vim'

" IDE

" -------------------------
" Syntax formatter
Plug 'pangloss/vim-javascript'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'ryanoasis/vim-devicons'

" -------------------------
" NerdTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdtree'
"For show the gitstatus in nerdtree
Plug 'airblade/vim-gitgutter'


" -------------------------
" Tmux navigator
Plug 'christoomey/vim-tmux-navigator'





"Plug 'w0rp/ale'
"PHP Autocomplete
"Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
"Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}

"Plug 'vim-syntastic/syntastic', {'for': 'python'}
"Plug 'davidhalter/jedi-vim'

"Utilities
"Plug 'SirVer/ultisnips'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Theme Interface
Plug 'morhetz/gruvbox'
"Plug 'ryanoasis/vim-devicons'
"Plug 'sjl/badwolf'
"Plug 'junegunn/limelight.vim'
"Plug 'romainl/Apprentice'
"Plug 'Lokaltog/vim-distinguished'
"Plug 'w0ng/vim-hybrid'
"Plug 'daylerees/colour-schemes', {'rtp': 'vim/'}
"Plug 'ajh17/Spacegray.vim'
"Plug 'colepeters/spacemacs-theme.vim' 

" Theme / Interface
"Plug 'AnsiEsc.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'

call plug#end()

colorscheme molokai 

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
" Custom shortcuts
nmap <Leader>q :q<CR>
nmap <C-n> :tabn<CR>
nmap <Leader>tp :tabp<CR>
nmap <Leader>w :w<CR>
nmap <Leader>r :edit<CR>
nmap <Leader>y :sp<CR>
"Comment Lines
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
"Format the file
nmap <Leader>f :CocCommand prettier.formatFile<CR>

" Syntax Highlight
let g:javascript_plugin_jsdoc = 1
let g:snipMate = { 'snippet_version' : 1 }

"---------------------------------
"COC Configuration
" use <tab> for trigger completion and navigate to the next complete item

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
"
"
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"---------------------------------

" Highlight
""SnipMate completion plugin
"nmap <C-J> <esc>a<Plug>snipMateNextOrTrigger
"nmap <C-J> <Plug>snipMateNextOrTrigger
"nmap <C-J> <Plug>snipMateTrigger
"nmap <C-Tab> :tabp

"set g:snipMate.snippet_version
"
""Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='biogoo'
"let g:airline_theme='tomorrow'
"" air-line
let g:airline_powerline_fonts = 1
"
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"
"" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"
"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" ----------- vim-syntastic ---------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_python_checkers = ['flake8', 'pylint']
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

