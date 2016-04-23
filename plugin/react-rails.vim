function! ReactInstall()
  execute "!rails g react:install"
  redraw!
endfunction

function! GenerateComponent(component)
  execute "!rails generate react:component " . a:component
  redraw!
endfunction

function! GenerateES6Component(component)
  execute "!rails generate react:component " . a:component . "--es6"
  redraw!
endfunction

function! GenerateCoffeeComponent(component)
  execute "!rails generate react:component " . a:component . "--es6"
  redraw!
endfunction

command! ReactInstall call ReactInstall()
command! -nargs=1 ReactComponent call s:GenerateComponent(<f-args>)
command! -nargs=1 ReactComponentES6 call s:GenerateES6Component(<f-args>)
command! -nargs=1 ReactComponentCoffee call s:GenerateCoffeeComponent(<f-args>)
