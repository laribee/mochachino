configuration = require('../lib/mochachino/configuration')

describe "Configuration", ->

  it "provides a list of source file locations", ->
    path = '../../test/fixtures/configuration.yml'
    sourceFilePatterns = configuration.sourceFiles(path)

    sourceFilePatterns.length.should.equal(3)
    sourceFilePatterns.should.include('app.js')
    sourceFilePatterns.should.include('utility.coffee')
    sourceFilePatterns.should.include('lib/**/*.js')

  it "provides a list of test file locations", ->
    path = '../../test/fixtures/configuration.yml'

    sourceFilePatterns = configuration.testFiles(path)
    sourceFilePatterns.length.should.equal(2)
    sourceFilePatterns.should.include('test/**/*.js')
    sourceFilePatterns.should.include('test/**/*.coffee')
