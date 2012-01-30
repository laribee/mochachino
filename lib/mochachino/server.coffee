express = require('express')
app = express.createServer()
loader = require('./file_loader')

app.configure ->
  app.use express.methodOverride()
  app.use express.bodyParser()
  app.set 'view engine', 'jade'
  app.set 'views', "#{__dirname}/server/views"
  app.set 'view options', { layout: false }

app.get '/', (req, res) ->
  data = { files: [1,2,3,4] }
  res.render('runner', data)

app.listen(9999)
