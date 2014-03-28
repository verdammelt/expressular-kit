express = require('express')
app = express()

app.use(express.logger())

app.get '/', (req, res) -> res.send 'Hello Coffee'

server = app.listen 3000, ->
  console.log 'litsening on port %d', server.address().port
