express = require('express')
app = express()

app.get '/', (req, res) -> res.send 'Hello Coffee'

server = app.listen 3000, ->
  console.log 'litsening on port %d', server.address().port
