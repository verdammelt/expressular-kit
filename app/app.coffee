express = require 'express'
logfmt = require 'logfmt'
app = express()

# configuration
app.configure ->
  app.set 'port', process.env.PORT || 3000

# middleware
app.use(logfmt.requestLogger())

app.use(express.static(__dirname + "/static"))

module.exports = app

