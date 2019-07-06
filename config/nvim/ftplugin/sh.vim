set tabstop=2
set shiftwidth=2
set softtabstop=2
set noexpandtab

let b:ale_fix_on_save = 1
let b:ale_fixers = ['shfmt', 'trim_whitespace', 'remove_trailing_lines']
let b:ale_linters = ['shellcheck', 'shfmt', 'bash-language-server']
