execute pathogen#infect()

syntax on

if $COLORCOUNT == "" || $COLORCOUNT == "256"
    set t_Co=256
    color wombat256
else
    color wombat
endif


filetype plugin indent on

set laststatus=2



