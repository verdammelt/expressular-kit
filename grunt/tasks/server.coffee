app = require '../../app/app.coffee'

module.exports = (grunt) ->
  grunt.registerTask 'start_server', 'Start the app', =>
    @server = app.listen 5555, -> console.log 'starting server on 5555'

  grunt.registerTask 'stop_server', 'Stop the app', =>
    @server.close() if @server
