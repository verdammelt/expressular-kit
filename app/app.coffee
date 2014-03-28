express = require('express')
app = express()

# configuration
app.configure ->
  app.set 'port', process.env.PORT || 3000

# middleware
app.use(express.logger())

# routes
app.get '/', (req, res) -> res.send 'Hello Coffee'

# launch the server
server = app.listen app.get('port'), ->
  console.log 'litsening on port %d', server.address().port
