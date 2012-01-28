express = require('express')
app = express.createServer()

app.configure ->
  app.use express.methodOverride()
  app.use express.bodyParser()
  app.set 'view engine', 'jade'
  app.set 'views', "#{__dirname}/views"
  app.set 'view options', { layout: false }

app.get '/', (req, res) ->
  res.render('runner')

app.listen(9999)
