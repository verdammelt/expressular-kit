module.exports =
  unit:
    options:
      files: [
        'app/static/bower_components/angular/angular.js'
        'app/static/bower_components/angular-mocks/angular-mocks.js'

        'app/client/**/*.coffee'

        'tests/client/unit/**/*.coffee'
      ]
      frameworks: ['jasmine']
      preprocessors:
        '**/*.coffee': 'coffee'
      browsers: ['PhantomJS']
      singleRun: true
    
