set nocompatible " be improved, required
filetype off "required

"set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Make Vundle manage itself, a necessary setting
Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'

Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'scrooloose/nerdcommenter' 
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'OmniCppComplete'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'RltvNmbr.vim'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/matchit'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'gabrielelana/vim-markdown'
call vundle#end()

filetype plugin indent on

set nu
syntax on
set shiftwidth=4
set tabstop=4
set autoindent
set cindent
set ruler
set showcmd
set hls "highlight keywords
set background=dark
set ic "ignore capita
"set nowrap
set cursorline
"set cursorcolumn

colorscheme molokai
"colorscheme phd



map <silent> <F4> :FSHere<CR>
map <silent> <F5> :NERDTreeToggle<CR>
map <F9> :Tlist<CR>
"map <C-o> <ESC>:copen<CR>
map <C-c> <ESC>:cclose<CR>
map <C-m> <ESC>:make<CR>
map <C-n> <ESC>:cn<CR>
map <C-p> <ESC>:cp<CR>
"nnoremap <silent> <C-Right> :FSHere<CR>


" set Tab window width
let g:NERDTreeWinSize = 20 
let Tlist_WinWidth = 20

" vim-javascript
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1
"set foldmethod=syntax

" javascript-libraries-syntax.vim
let g:used_javascript_libs='underscore,backbone'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery=1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore=1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone=1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude=1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs=1

" powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

" tagbar
map <F3> :Tagbar<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30

" easy-motion
let mapleader=","
let g:easymotion_smartcase=1
map <Leader>. <Plug>(easymotion-repeat)


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Jedi vim
let g:pymode_rope = 1

" markdown
let g:markdown_include_jekyll_support=0
let g:markdown_enable_spell_checking=0
let g:markdown_enable_input_abbreviations=0
let g:markdown_enable_conceal=1

