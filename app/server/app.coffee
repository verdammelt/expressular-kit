express = require('express')
logfmt = require('logfmt')
app = express()

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

app.use '/static/js/app.js', (request, response, next) ->
  coffee = require('coffee-script')
  response.send coffee._compileFile(inAppDir('client/app.coffee'))

app.use '/static', express.static(inAppDir('static/bower_components'))
app.use '/static', express.static(inAppDir('static'))

app.get '/', (request, response) -> response.render('index')

module.exports = app
