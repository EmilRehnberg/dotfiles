let g:gutentags_cache_dir = expand('~/.cache/ctags/')
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]
let g:gutentags_file_list_command = {
      \ 'markers': {
          \ '.git': 'git ls-files',
          \ '.hg': 'hg files',
          \ },
      \ }
let g:gutentags_ctags_exclude = [
      \ 'tags*',
      \ 'node_modules',
      \ 'cache', '*.cache',
      \ 'compiled',
      \ 'docs',
      \ '*.min.*',
      \ '*.map',
      \ '*.pdb',
      \ '*.snip',
      \ '*.lock', '*-lock.json',
      \ '.*rc*', '*.conf', 'config',
      \ '*.tmp', '*.bak',
      \ '*.md', '*.html',
      \ 'auth', '*.fastresume', '*.state',
      \ '*.spl', '*.sug', '*.add', '*.vba',
      \ '*.git', '*.svg', '*.hg', '.gitignore',
      \ '*.RData', '*.Rproj.user', '*.Rhistory', '*.Rd',
      \ 'NAMESPACE', 'DESCRIPTION', 'WORDLIST',
      \ '*.css', '*.less', '*.scss',
      \ '*.exe', '*.dll', '*.ini',
      \ '*.mp3', '*.ogg', '*.flac',
      \ '*.swp', '*.swo', '.VimballRecord',
      \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.ico',
      \ '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
      \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
      \ '*.json', '*.csv', '*.tsv', '*.rda', '*.txt', '*.xls', '*.xlsx', '*.yaml',
      \ ]
