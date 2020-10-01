" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Plug 'liuchengxu/vim-which-key'

Plug 'mhinz/vim-startify'
" Plug 'Yohannfra/Nvim-Switch-Buffer'
" Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
" Plug 'StanAngeloff/php.vim'
" Plug 'stephpy/vim-php-cs-fixer'
Plug 'yegappan/mru'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" phpactor
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
" Plug 'dense-analysis/ale'

" Laravel conf
Plug 'noahfrederick/vim-laravel'
" Plug 'tpope/vim-dispatch'             "| Optional
" Plug 'tpope/vim-projectionist'        "|
" Plug 'noahfrederick/vim-composer'     "|

" ncm
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
" Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'vim-syntastic/syntastic'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'tpope/vim-commentary'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'airblade/vim-rooter'
Plug 'valloric/MatchTagAlways'

" vim snipmate
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'algotech/ultisnips-php'
" Plug 'vim-scripts/AutoComplPop'

Plug 'posva/vim-vue'

" Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plug 'ryanoasis/vim-devicons'
Plug 'editorconfig/editorconfig-vim'

" Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jwalton512/vim-blade'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" colorschreme plugin
Plug 'arcticicestudio/nord-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
" Plug 'jdsimcoe/hyper.vim'
Plug 'morhetz/gruvbox'
Plug 'geoffharcourt/one-dark.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vimwiki/vimwiki'

" v debug
" Plug 'vim-vdebug/vdebug'
" javscript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
call plug#end()
