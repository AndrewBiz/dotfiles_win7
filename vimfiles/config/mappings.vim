" Hit S in command mode to save, as :w<CR> is a mouthful and MacVim
" Command-S is a bad habit when using terminal Vim.
" We overload a command, but use 'cc' for that anyway.
noremap S :w<CR>

" Make Q useful and avoid the confusing Ex mode.
noremap Q <nop>
" Close window.
noremap QQ :q<CR>
" Close a full tab page.
noremap QW :windo bd<CR>
" Close all.
noremap QA :qa<CR>

" Repeat last substitution, including flags, with &.
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" In command-line mode, C-a jumps to beginning (to match C-e).
cnoremap <C-a> <Home>

" Select the text that was last edited/pasted.
" http://vimcasts.org/episodes/bubbling-text/
nmap gV `[v`]

" Move by screen lines instead of file lines.
" http://vim.wikia.com/wiki/Moving_by_screen_lines_instead_of_file_lines
noremap <Up> gk
noremap <Down> gj
noremap k gk
noremap j gj
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Shift + left/right to switch tabs.
" You may need to map these in iTerm2 prefs to escape
" sequences [1;2C (right) and D (left).
noremap <S-Left> :tabp<CR>
noremap <S-Right> :tabn<CR>

" Un-highlight search matches
nnoremap <leader><leader> :noh<CR>

" Create a split on the given side.
" From http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/ via joakimk.
nmap <leader><left>   :leftabove  vsp<CR>
nmap <leader><right>  :rightbelow vsp<CR>
nmap <leader><up>     :leftabove  sp<CR>
nmap <leader><down>   :rightbelow sp<CR>

" Tab/shift-tab to indent/outdent in visual mode.
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Keep selection when indenting/outdenting.
vnoremap > >gv
vnoremap < <gv

" Henrik: In command mode, type %% to insert the path of the currently edited file, as a shortcut for %:h<tab>.
" cmap %% <C-R>=expand("%:h") . "/" <CR>

" ANB: fix trailing whightspaces
autocmd BufWritePre * :FixWhitespace

" vimcast.org => Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

" Explorer
nnoremap <c-e> :Explore %:p:h<cr>

" ANB: to use?
" nmap \s :%s/\<<c-r>=expand("<cword>")<cr>\>/
" nmap \g :silent grep <c-r>=expand("<cword>")<cr> **/*<cr> :cw<cr><c-l>
