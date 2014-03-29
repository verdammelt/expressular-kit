express = require('express')
app = express()

# configuration
app.configure ->
  app.set 'port', process.env.PORT || 3000
  app.set 'view engine', 'jade'
  app.set 'views', 'app/server/views'

# rendering engine
app.engine 'jade', require('jade').__express

# middleware
app.use(express.logger())

app.use('/static', express.static(__dirname + "/../static/bower_components"))
app.use('/static', express.static(__dirname + "/../static"))

app.get '/', (request, response) -> response.render('index')

module.exports = app

