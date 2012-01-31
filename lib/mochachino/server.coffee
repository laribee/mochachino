express = require('express')
app = express.createServer()
configuration = require('./configuration')
view_helpers = require('./view_helpers')

app.configure ->

  app.use express.methodOverride()
  app.use express.bodyParser()
  app.use app.router
  app.use express.static(process.cwd())

  app.set 'view engine', 'jade'
  app.set 'views', "#{__dirname}/server/views"
  app.set 'view options', { layout: false }

  app.helpers { write_script_tags: view_helpers.write_script_tags }

app.get '/', (req, res) ->
  data = { testFiles: configuration.testFiles() }
  console.log(data)
  res.render('runner', data)

app.listen(9999)
