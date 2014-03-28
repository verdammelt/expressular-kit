request = require 'request'
app = require '../../app/app.coffee'

describe "The App", ->
  port = 8888

  beforeEach =>
    @server = app.listen port, -> console.log "starting on port #{port}"

  afterEach =>
    @server.close()

  get = (path, callback) ->
    request.get "http://localhost:#{port}#{path}", callback

  it "returns pleasant message", (done) ->
    get "/",  (error, response, body) ->
      expect(response.statusCode).toBe(200)
      done()

  it "it doesn't know about foo", (done) ->
    get "/foo", (error, response, body) ->
      expect(response.statusCode).toBe(404)
      done()
