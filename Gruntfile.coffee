module.exports = (grunt) ->
  path = require('path')
    
  require('load-grunt-config')(grunt,
    configPath: path.join(process.cwd(), 'grunt', 'config')
  )
    
  grunt.registerTask 'default', [
    'coffeelint',
    'jasmine_node',
    'protractor'
  ]

