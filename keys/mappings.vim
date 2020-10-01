" search file
" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
" map <D-A-RIGHT> <C-w>l
" map <D-A-LEFT> <C-w>h
" map <D-A-DOWN> <C-w><C-w>
" map <D-A-UP> <C-w>W

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

imap jj <Esc>

command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>

function! TransFormFile()
    call phpactor#Transform()
    call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <buffer> <F1> <esc>:w<CR> <Esc>:call TransFormFile()<CR>
autocmd FileType php noremap <buffer> <F1> <esc>:w<CR> :PhpactorTransform<CR>

autocmd FileType php map <buffer> <F2> <esc>:w<CR>:PhpactorContextMenu<CR>

autocmd FileType php map <buffer> <F3> <esc>:w<CR>:PhpactorNavigate<CR>

autocmd FileType php map <buffer> <F4> <esc>:w<CR>:PhpactorImportMissingClasses<CR>

function! IPhpInsertUse()
    call phpactor#ImportClass()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <buffer> <F5> <esc>:w<CR> <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <buffer> <F5> <esc>:w<CR> :PhpactorImportClass<CR>


function! IPhpExpandClass()
    call phpactor#ClassExpand()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <buffer> <F6> <esc>:w<CR> <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <buffer> <F6> <esc>:w<CR> :PhpactorClassExpand<CR>

autocmd FileType php map <buffer> <F12> <esc>:w<CR>:PhpactorGotoDefinition<CR>

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

" python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" PHP
autocmd FileType php map <buffer> <F9> :w<CR>:exec '!php' shellescape(@%, 1)<CR>
autocmd FileType php imap <buffer> <F9> <esc>:w<CR>:exec '!php' shellescape(@%, 1)<CR>
autocmd FileType php set iskeyword+=$
" feature test
autocmd FileType php map <buffer> <F10> :w<CR>:exec '!./vendor/phpunit/phpunit/phpunit'<CR>
autocmd FileType php imap <buffer> <F10> <esc>:w<CR>:exec '!'./vendor/phpunit/phpunit/phpunit<CR>
autocmd FileType php map <buffer> <F11> :w<CR>:!php artisan test<CR>

" featur test with parameters
autocmd FileType php command! -nargs=1 Tf execute "!./vendor/phpunit/phpunit/phpunit --filter" string(<q-args>)

" vim-javascript
let g:javascript_plugin_jsdoc = 1
" test javascript
autocmd FileType javascript map <buffer> <F10> :w<CR>:exec '!yarn run test'<CR>

" jump to definition
autocmd FileType javascript map <buffer> <F12> :w<CR>:call CocActionAsync("jumpDefinition")<CR>

