" set the leader to comma, (default is backslash)
let mapleader=','
let maplocalleader=';'

" Unmap the arrow keys, use hjkl
map <Left> <Nop>
map <Down> <Nop>
map <Up> <Nop>
map <Right> <Nop>

" do not remember what Q does
nnoremap Q <Nop>

noremap <Leader>c :nohlsearch<CR>

runtime neosnippet-keymaps.vim
