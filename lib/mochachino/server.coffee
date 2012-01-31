express = require('express')
app = express.createServer()
configuration = require('./configuration')
loader = require('./file_loader')
view_helper = require('./script_tag_helper.coffee')

app.configure ->

  app.use express.methodOverride()
  app.use express.bodyParser()
  app.use app.router
  app.use express.static(process.cwd())

  app.set 'view engine', 'jade'
  app.set 'views', "#{__dirname}/server/views"
  app.set 'view options', { layout: false }

  app.helpers { write_script_tags: view_helper.write_tags_for, yo: -> 'yello' }

app.get '/', (req, res) ->

  data = { sourceFiles: [], testFiles: [] }

  console.log(configuration.sourceFiles())

  data.sourceFiles = configuration.sourceFiles()
  data.testFiles = configuration.testFiles()

  console.log(data)

  res.render('runner', data)

app.listen(9999)
