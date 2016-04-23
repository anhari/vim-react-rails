function! ReactInstall()
  execute "!rails g react:install"
  redraw!
endfunction

function! GenerateComponent(component)
  execute "!rails generate react:component " . <args>
  redraw!
endfunction

function! GenerateES6Component(component)
  execute "!rails generate react:component " . <args> . "--es6"
  redraw!
endfunction

function! GenerateCoffeeComponent(component)
  execute "!rails generate react:component " . <args> . "--es6"
  redraw!
endfunction

command! ReactInstall call ReactInstall()
command! -nargs=+ ReactComponent call s:GenerateComponent(<args>)
command! -nargs=+ ReactComponentES6 call s:GenerateES6Component(<args>)
command! -nargs=+ ReactComponentCoffee call s:GenerateCoffeeComponent(<args>)
