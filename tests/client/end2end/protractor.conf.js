exports.config = {
  specs: [ '**/*.coffee' ],

  capabilities: {
    'browserName': 'chrome'
  },

  baseUrl: 'http://localhost:' + (process.env.HTTP_PORT || '5555'),

  framework: 'jasmine',
  
  plugins: [ 'protractor-coffee-preprocessor' ],

  jasmineNodeOpts: {
    onComplete: null,
    isVerbose: true,
    showColors: true,
    includeStackTrace: true,
    defaultTimeoutInterval: 30000
  },

  // ----- The cleanup step -----
  //
  // A callback function called once the tests have finished running and
  // the webdriver instance has been shut down. It is passed the exit code
  // (0 if the tests passed or 1 if not).
  onCleanUp: function() {}
};
