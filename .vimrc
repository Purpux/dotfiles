"global settings
:let mapleader='\'
:set number
:syntax on
:set autoindent
:set tabstop=4
:set completeopt=menuone,noinsert,noselect
:colorscheme peachpuff
:set ignorecase

"Section for global nnoremapping
nnoremap ;<Space> /<++><Enter>"_c4l

"Section for global inoremaping
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap { {}<Esc>i
inoremap <leader>a <++><Esc>

"Copying to X11 clipboard
vnoremap <leader>xy :!xclip -i -selection clipboard -f<CR>
"I have no idea why this works or how it works
nnoremap <leader>xp mz:+1r !xclip -o -selection clipboard -r<CR>`z

"Section for highlight management
highlight Folded ctermbg=black
highlight MatchParen cterm=bold ctermbg=none ctermfg=darkgreen

"startup and mapping for c
autocmd FileType c nnoremap <leader>p iprintf("\n")<Esc>3hi
autocmd FileType c setlocal foldmethod=syntax
autocmd BufNewFile *.c 0r ~/.local/skeletons/skeleton.c

"startup and mapping for python
autocmd FileType python nnoremap <leader>p iprint("")<Esc>1hi
