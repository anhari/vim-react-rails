# vim-react-rails

vim-react-rails allows you to use the generators provided by the [react-rails]
gem via vim commands.

## Usage

### ReactInstall

Configure your application to use the react-rails gem. Runs the following:

    $ rails g react:install

### ReactComponent

Generate a new component file. For example, `:ReactComponent Post` will run:

    $ rails g react:component Post

### ReactComponentES6

Generate a new component file using ES6. For example, `:ReactComponentES6 Post`
will run:

    $ rails g react:component Post --es6

### ReactComponentCoffee

Generate a new component file using CoffeeScript. For example,
`:ReactComponentCoffee Post` will run:

    $ rails g react:component Post --coffee

[react-rails]: https://github.com/reactjs/react-rails
