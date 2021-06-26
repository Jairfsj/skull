let extension = expand('%:e')


call plug#begin('~/.vim/plugged')

"Aqui vai os plugins

"Plugin inicial de teste
Plug 'terroo/vim-simple-emoji'
Plug 'matsuuu/pinkmare'
if( extension == "cpp"  || extension == "cc" || extension	== "h" || extension == "hpp")
Plug 'ycm-core/YouCompleteMe'
else
Plug 'zxqfl/tabnine-vim'
endif
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-Airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}



call plug#end() 


colorscheme pinkmare
hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=#87c095 guifg=NONE


set nu!
set mouse=a
set title
set cursorline
set encoding=utf-8
set autoindent
set history=500
set smartindent
set clipboard=unnamedplus
set tabstop=2 sts=2 expandtab vartabstop=2 
set foldmethod=syntax
set foldlevel=99

syntax on
map q :quit<CR>
map <C-s> :write<CR>
nnoremap <space> za 

"YOUCOMPLETEME
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_language_server =
\ [{
\   'name': 'ccls',
\   'cmdline':[ 'ccls' ],
\   'filetypes':['c', 'cpp', 'cc', 'h', 'hpp', 'javascript', 'java', 'python', 'html5', 'css3' ],
\   'project_root_files': [ '.ccls-root', 'compile_comand.json']
\}]
"let g:ycm_clangd_args=['--header-insertion=never']



"UTILSNIPS
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let UltiSnipsJumpBackwardTrigger = "<s-tab>"

"AIRLINE
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'dracula'

nnoremap <M-Right> :bn<cr>
nnoremap <M-left> :bp<cr>
nnoremap <C-x> :bp \|bd #<cr>

" powerline symbols
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" IndentLine
let g:indentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>

"NerdTree
map <C-n> :NERDTreeToggle<cr>

"Fonts
set guifont=SFMono-Regular:h12

" CtrlP
let g:ctrlp_custom_ignore = ' v[ / ] .(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd % && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

"NerdCommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert
 " Ale
left g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0



