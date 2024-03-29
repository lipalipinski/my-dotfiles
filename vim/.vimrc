" Configuration file for vim
syntax on

" Jenkinsfile syntax
autocmd BufRead,BufNewFile Jenkinsfile,Jenkinsfile-* set filetype=groovy

set autoindent expandtab tabstop=2 shiftwidth=2

set modelines=0		" CVE-2007-2438

" Dockerfile* synthax plugin
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
autocmd BufNewFile,BufRead Dockerfile* set syntax=dockerfile

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
