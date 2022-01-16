if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal makeprg=shellcheck\ -x\ -f\ gcc\ --shell=sh\ %
au BufWritePost * :silent make | redraw!
au QuickFixCmdPost * cwindow
" au QuickFixCmdPost lwindow
