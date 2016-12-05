http = require 'http'
user = require './user.coffee'
url = require 'url'
fs = require 'fs'


###http.createServer (req, res) ->

  path = url.parse(req.url).pathname

  user.get "Antonia", (id) ->
    res.writeHead 200,
      'Content-Type': 'text/plain'

    #res.end('Hello\n');`
    res.end "hello #{id}" # "hello" + id

.listen 1337, '127.0.0.1', () ->
console.log "running on 127.0.0.1:1337"###

express = require 'express'
app = express()

app.set 'port', 1337
app.set('view engine', 'pug')
app.set('views', "#{__dirname}/../views")

app.use '/', express static "#{__dirname}/../public"
app.get '/'(req, res) ->
	res.end "hello world"
	res.render 'layout', {}
	
app.get '/hello/:name', (req,res) ->
	res.end "hello #{req, params.name}"

app.get '/request', (req, res) ->
	console.log req	res.end "done"
	
app.listen app.get('port'), ->
	console.log 'listening on port #{app.get 'port'}