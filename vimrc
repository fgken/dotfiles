set background=dark
set number
set smartindent
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch

" Disable auto comment insertion
autocmd BufEnter * setlocal formatoptions-=r
autocmd BufEnter * setlocal formatoptions-=o

" ================================================
" --- NeoBundle settings---
" ================================================
if has('vim_starting')
	set nocompatible

	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc.vim'
"NeoBundle 'Shougo/neocomplcache.vim'
"NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'grep.vim'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'Valloric/YouCompleteMe'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck


