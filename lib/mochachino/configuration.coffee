path = require('path')
require('js-yaml')

DEFAULT_CONFIG = require(path.join(process.cwd(), 'test', 'mochachino.yml'))

module.exports.testFiles = (config = DEFAULT_CONFIG) ->
  config[0]['tests']
