" IzZy's neovim config

" Plugins
call plug#begin()
"""" Aesthetics
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"""" Functionality
call plug#end()

" General Settings
set iskeyword+=-                        " Treat dash separated words as a word text object
set formatoptions-=cro                  " Stop newline continution of comments

set hidden                              " Required to keep multiple buffers open multiple buffers
set tabstop=4                           " Insert 4 spaces for a tab
set smarttab                            " Makes tabbing smarter will realize you have 2 or 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number                              " Line Number
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set cursorline                          " Highlight the line of the cursor
set encoding=utf-8                      " The encoding displayed

" Theme
colorscheme dracula
"""" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''

" Keymaps
let mapleader = ","
"""" Buffer Navigation
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprev<CR>
nnoremap <C-b> :badd<Space>
inoremap <C-b> <Esc>:badd<Space>
"""" Tab Navigation
nnoremap <C-t> :tabnew<Space>
inoremap <C-t> <Esc>:tabnew<Space>
nnoremap <C-n> :tabnext<CR>
inoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprev<CR>
inoremap <C-p> :tabprev<CR>
"""" Insert & Command Navigation Keymaps
noremap! <A-h> <Left>
noremap! <A-j> <Down>
noremap! <A-k> <Up>
noremap! <A-l> <Right>

