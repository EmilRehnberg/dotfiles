let mapleader=',' " set the leader to comma, (default is backslash)
let maplocalleader=';'

" Unmap the arrow keys, use hjkl
map <Left> <Nop>
map <Down> <Nop>
map <Up> <Nop>
map <Right> <Nop>

nnoremap Q <Nop> " do not remember what Q does

noremap <Leader>c :nohlsearch<CR>

runtime neosnippet-keymaps.vim
