require('js-yaml')

module.exports.sourceFiles = (configFilePath) ->
  config = readConfigFile(configFilePath)
  config[0]['sources']

module.exports.testFiles = (configFilePath) ->
  config = readConfigFile(configFilePath)
  config[0]['tests']

readConfigFile = (path) ->
  require(path)
