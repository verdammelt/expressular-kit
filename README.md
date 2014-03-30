## What is Expressular-kit?

This is a starter kit for Node-Angular-Express projects written in
CoffeeScript. It will contain only the items I think are necessary to
get a project off the ground. It may not contain things like a
database as that will be dependant upon the needs of the project.

## How to build
### Dependencies
`expressular-kit` depends upon `npm` and (transitively) on `git`.
### How to build
For a first time build run `npm install` and then `./bin/build`. For
any other build simply run `./bin/build`.
### How to run
After building one can run the application with `./bin/serve` or `npm
start` (which calls `./bin/serve`)

## Organization
The application is in the `app` directory separated into three areas:
* `client`: the client Angular code with partials (if any)
* `server`: the Express server code with views (if any)
* `static`: any static resources such as dependencies (angular etc).

The tests are in the `tests` directory, separted into `client` and
`server` tests. `client/end2end` contains the `protractor` tests which
do complete end to end tests.

The `Gruntfile.coffee` and contents of the `grunt` directory is the
definition of the build system.

## TODO
* ~~package.json~~
* ~~Basic Grunt/CoffeeScript~~
* ~~Express~~
* ~~jasmine-node~~
* ~~bower~~
* ~~angular~~
* ~~grunt-bump~~
* ~~protractor~~
* ~~karma~~
* ~~using angular coffeescript in client~~
* ~~have express compile coffeescript on the fly.~~
* ~~heroku deploy~~
* travis CI from github
* remove protractor.conf.js (move it all into grunt config?)
