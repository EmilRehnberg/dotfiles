call dein#add('vimwiki/vimwiki')

let g:vimwiki_list = [{'path': '~/Dropbox/bunsho/vimwiki/',
      \ 'template_path': '~/Dropbox/bunsho/vimwiki-assets/templates/',
      \ 'template_default': 'default',
      \ 'template_ext': '.html',
      \ 'css_name': '~/Dropbox/bunsho/vimwiki-assets/style.css',
      \ 'path_html': '~/Dropbox/bunsho/vimwiki-html/'}]
let g:vimwiki_list_text_ignore_newline = 0
let g:vimwiki_list_ignore_newline = 0
let g:vimwiki_folding = 'expr'
