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

""" key mapping
:imap jj <Esc>
:imap kj <Esc>

""" environment, encoding, fileformat
set encoding=utf-8
set ff=unix
set shell=/bin/bash

""" tabbing & indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set smartindent
set autoindent

""" misc
set number
