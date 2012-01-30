class module.exports.FileLoader

  constructor: (@configuration) ->

  getSourceFiles: ->
    @configuration.sourceFiles()

  getTestFiles: ->
    @configuration.testFiles()
