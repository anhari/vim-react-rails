function! ReactInstall()
  execute "!rails g react:install"
  redraw!
endfunction

command! ReactInstall call ReactInstall()
