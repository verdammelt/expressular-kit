express = require('express')
logfmt = require('logfmt')
app = express()
coffee = require('coffee-script')
fs = require('fs')

path = require('path')
inAppDir = (pathToFile) -> path.join(__dirname, '..', pathToFile)

# configuration
app.configure ->
  app.set 'port', process.env.PORT || 3000
  app.set 'view engine', 'jade'
  app.set 'views', 'app/server/views'

# rendering engine
app.engine 'jade', require('jade').__express

# middleware
app.use logfmt.requestLogger()

app.use '/static/js/', (request, response, next) ->
  coffeeFile = path.join __dirname, '../client', request.path
  fs.readFile coffeeFile, "utf-8", (err, data) ->
    return next() if err?
    response
      .contentType('text/javascript')
      .send coffee.compile data

app.use '/static', express.static(inAppDir('static/bower_components'))
app.use '/static', express.static(inAppDir('static'))

app.get '/', (request, response) -> response.render('index')

module.exports = app
