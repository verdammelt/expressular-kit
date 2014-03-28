app = require "./app.coffee"

# launch the server
server = app.listen app.get('port'), ->
  console.log 'litsening on port %d', server.address().port

