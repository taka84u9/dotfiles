let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_scss_checkers = ['stylelint']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go', 'html'] }
