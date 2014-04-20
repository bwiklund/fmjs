express = require 'express'

app = express()

app.configure ->
  app.use express.logger()
  app.set 'views', 'views'
  app.set 'view engine', 'jade'
  app.use express.static 'public'
  app.use '/bower_components', express.static 'bower_components'

app.get "/", (i,o) ->
  o.render 'index'

port = process.env.PORT || 8765
app.listen port, (err) ->
  if err
    throw err
    process.exit()
  else
    console.log "fmjs is listening on #{port}"