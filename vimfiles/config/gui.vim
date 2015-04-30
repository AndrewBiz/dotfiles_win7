" GUI gvim, macvim
if has("gui_running")
    set guioptions-=T           " turn off needless toolbar on gvim/mvim
    set guioptions-=L           " turn off the scroll bar
    set guioptions-=r           " Don't show right scrollbar

    set t_Co=256                " tell the term has 256 colors

    colorscheme railscasts

    set guitablabel=%M%t
    set lines=40
    set columns=100

    if has("gui_win32") || has("gui_win32s")
        set guifont=PT_Mono:h12
    endif
else
    "set railscasts colorscheme when running vim in gnome terminal
    if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
        colorscheme molokai
    else
        if $TERM == 'xterm'
            set term=xterm-256color
            colorscheme molokai
        else
            colorscheme default
        endif
    endif
endif
