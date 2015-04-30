" Pathogen.vim
" Must turn filetype off and then back on.
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" *** Ctrl-P
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 20
let g:ctrlp_show_hidden = 0
let g:ctrlp_max_files = 0
let g:ctrlp_switch_buffer = 0
" Only cache if we're over this number of files.
let g:ctrlp_use_caching = 2000
" Don't let ctrlp change the working directory. Instead it now uses
" the directory where vim was started. This fixes issues with some
" projects that have nested git directories.
let g:ctrlp_working_path_mode = 0
" Files to skip.
" Possibly used by other plugins, like Command-T.
set wildignore+=*.o,*.obj,.git,tmp
set wildignore+=public/uploads,db/sphinx,vim/backup
set wildignore+=.themes  " Octopress.
map <C-b> :CtrlPBuffer<CR>

" *** Syntastic
     let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
"    Slow, so only run on :SyntasticCheck
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }

" *** NERDTree
let NERDTreeIgnore=['\.rbc$', '\~$']
"    Disable menu.
let g:NERDMenuMode=0
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFindIfFindable<CR>

" *** Commentary
xmap <leader>c <Plug>Commentary
nmap <leader>c <Plug>Commentary
nmap <leader>cc <Plug>CommentaryLine
nmap <leader>cu <Plug>CommentaryUndo

" *** vim-coffee-script
let g:coffee_compile_vert = 1
