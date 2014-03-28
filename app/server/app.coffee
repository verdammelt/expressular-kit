express = require('express')
app = express()

# configuration
app.configure ->
  app.set 'port', process.env.PORT || 3000

# middleware
app.use(express.logger())

app.use(express.static(__dirname + "/../static"))

module.exports = app

