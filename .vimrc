"""""""""""""""""""""""""""""""""""""""""""""""""""""""""vundle added section from github repo"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')




" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'benmills/vimux'

            """"""""""""""""""""""""""""C++ support""""""""""""""""""""""""""""
" c++ auto complete
Plugin 'Valloric/YouCompleteMe'


"c++ enhanced highlighting
"Plugin 'octol/vim-cpp-enhanced-highlightl'

" syntax checking for c++
Plugin 'vim-syntastic/syntastic'

" A plugin with some shortcuts to navigate between source and header files
Plugin 'vim-scripts/a.vim'

" C++ snippets 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"Plugin 'SirVer/ultisnips'
" display an overview of file structure in side bar (class navigation)
Plugin 'majutsushi/tagbar'


" file system explorer
Plugin 'preservim/nerdtree'

"provides file navigation and search
Plugin 'junegunn/fzf.vim'

" Automatic close for a character that has a matching closing counterpart.
Plugin 'Townk/vim-autoclose'


            """"""""""""""""""""""""""""Themes and interfaces""""""""""""""""""""""""""""
"A status bar with information divided into section..looks cool
Plugin 'vim-airline/vim-airline'

"A cool staff for icons. It supports various file types.
Plugin 'ryanoasis/vim-devicons' 

" cool schemes with acceptable contrast.
Plugin 'morhetz/gruvbox'



"coloring status line
Plugin 'itchyny/lightline.vim'

"a special configuration to activate nertree automatically in every single
" tab
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"another config to clos vim directly from one time if only open tab is a
"nerdtree    
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""""""""""""""""""""""""""verilog"""""""""""""""""""""""""""""""
"verilog support
Plugin 'jmcneal/verilog-support'


"verilog configure % to match more than just single characters
Plugin 'adelarsq/vim-matchit'

"verilog syntax highlighting and auto completion
Plugin 'vhda/verilog_systemverilog.vim'

"msh fahm by3ml eh
Plugin 'vim-scripts/vcscommand.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required












filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache

" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""ConfigurationSection"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show linenumbers
set number
set ruler


" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" coloring the syntax in vim
syntax on 
" Always display the status line
set laststatus=2

filetype indent on
set smartindent
"proper auto indent for c++ blocks
set autoindent
set cindent
" config for high contrast dark theme in gruv box.

let g:gruvbox_contrast_dark =  'hard'
colorscheme gruvbox 
set background =dark 


"config for ultisnippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"



" YouCompleteMe cancel up and down arrow keys bug in insert mode.
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

"" Ultisnips
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsListSnippets="<c-s-tab>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
" snippets config






"""""""""""""""""""""""""""""auto comand for c++ template by geeksfor geeks.
:autocmd BufNewFile  ?.cpp 0r ~/.vim/templates/skeleton.cpp 


" f5 ---> run cpp file with input from input.txt file and output the result
" into output.txt file
" __________________________________f6---->run cpp with stdin input.
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r < ./input.txt && > ./output.txt <CR>
autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r  <CR>
"mapping for keysnip plugin in insert mode
imap <F2> <Plug>snipMateNextOrTrigger



"map <F9> :!g++ -g % -o %:r && ./%:r <CR>




"active below split  inside vim
        "set splitbelow


"autocmd VimEnter * NERDTree
        "autocmd VimEnter * wincmd k
        "autocmd VimEnter * 10 wincmd +
       " autocmd VimEnter * terminal " this comand opens terminal
       " automatically in vim
        "autocmd  VimEnter * wincmd l
