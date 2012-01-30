require('js-yaml')
path = require('path')

CONFIG_FILE_PATH = path.join(process.cwd(), 'test', 'mochachino.yml')
console.log(CONFIG_FILE_PATH)

module.exports.sourceFiles = (configFilePath = CONFIG_FILE_PATH) ->
  config = readConfigFile(configFilePath)
  config[0]['sources']

module.exports.testFiles = (configFilePath = CONFIG_FILE_PATH) ->
  config = readConfigFile(configFilePath)
  config[0]['tests']

readConfigFile = (path) ->
  console.log(path)
  require(path)
