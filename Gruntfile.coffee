module.exports = (grunt) ->
  path = require('path')
    
  require('load-grunt-config')(grunt,
    configPath: path.join(process.cwd(), 'grunt', 'config')
  )
    
  grunt.registerTask 'default', [
    'coffeelint',
    'jasmine_node',
    'karma',
    'end2end'
  ]
  grunt.registerTask 'end2end', [ 'start_server', 'protractor', 'stop_server' ]

  grunt.loadTasks path.join(process.cwd(), 'grunt', 'tasks')

