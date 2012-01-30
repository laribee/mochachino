class module.exports.FileLoader

  constructor: (@configuration) ->

  getSourceFiles: -> [
    { path: 'lib/blah.js' },
    { path: 'lib/foo.coffee' }
  ]

  getTestFiles: -> [
    { path: 'test/blah_spec.coffee' },
    { path: 'test/foo_spec.coffee' },
  ]
