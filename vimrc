"global settings
let mapleader=';'
set ttyfast
set number
set autoindent
set tabstop=4
set completeopt=menuone,noinsert,noselect
set ignorecase
set incsearch
set secure
colorscheme peachpuff
syntax on

"Section for global nnoremapping
nnoremap <leader><Space> /<++><Enter>"_c4l

"Section for global inoremaping
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap { {}<Esc>i
inoremap <leader>a <++><Esc>

" I have no idea why this works or how it works Copying to X11 clipboard
vnoremap gy :!xclip -i -selection clipboard -f<CR>
nnoremap gp mz:-1r !xclip -o -selection clipboard -r<CR>`z

"Section for highlight management
highlight Folded ctermbg=black
highlight MatchParen cterm=bold ctermbg=none ctermfg=darkgreen

"startup and mapping for c
autocmd FileType c setlocal foldmethod=syntax
autocmd BufNewFile *.c 0r ~/.local/skeletons/skeleton.c
