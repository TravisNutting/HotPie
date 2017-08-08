
assert = require 'assert'
request = require 'request'
www = require '../../bin/www'
app = require '../../app'

describe "authentication", ->
  describe "GET /login", ->
    body = null
    before (done) ->
      options =
        { uri: "http://localhost:#{app.settings.port}/login" }
      request options, (err, response, _body) ->
        body = _body
        done()
    it "has title", ->
      assert.hasTag body, '//head/title', 'Hot Pie - Login'