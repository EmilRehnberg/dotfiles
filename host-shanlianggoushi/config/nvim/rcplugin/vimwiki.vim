call dein#add('vimwiki/vimwiki')

let g:vimwiki_list = [{'path': '~/win-home/OneDrive\ -\ Ericsson\ AB/vimwiki/',
      \ 'template_path': '~/win-home/OneDrive\ -\ Ericsson\ AB/vimwiki-assets/templates/',
      \ 'template_default': 'default',
      \ 'template_ext': '.html',
      \ 'css_name': '~/win-home/OneDrive\ -\ Ericsson\ AB/vimwiki-assets/style.css',
      \ 'path_html': '~/win-home/OneDrive\ -\ Ericsson\ AB/vimwiki-html/'}]
let g:vimwiki_list_text_ignore_newline = 0
let g:vimwiki_list_ignore_newline = 0
let g:vimwiki_folding = 'expr'
