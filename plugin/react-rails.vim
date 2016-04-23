function! ReactInstall()
  execute "!rails g react:install"
  redraw!
endfunction

function! GenerateComponent(...)
  execute "silent !rails generate react:component " . join(a:000, ' ')
  redraw!
endfunction

function! GenerateES6Component(...)
  execute "silent !rails generate react:component " . join(a:000, ' ') . " --es6"
  redraw!
endfunction

function! GenerateCoffeeComponent(...)
  execute "silent !rails generate react:component " . join(a:000, ' ') . " --coffee"
  redraw!
endfunction

command! ReactInstall call ReactInstall()
command! -nargs=* ReactComponent call GenerateComponent(<f-args>)
command! -nargs=* ReactComponentES6 call GenerateES6Component(<f-args>)
command! -nargs=* ReactComponentCoffee call GenerateCoffeeComponent(<f-args>)
