configuration = require('../lib/mochachino/configuration')

describe "Configuration", ->

  it "provides a list of source file locations", ->
    sourceFilePatterns = configuration.sourceFiles()
    sourceFilePatterns.length.should.equal(3)
    sourceFilePatterns.should.include('app.js')
    sourceFilePatterns.should.include('utility.coffee')
    sourceFilePatterns.should.include('lib/**/*.js')

  it "provides a list of test file locations", ->
    testFilePatterns = configuration.testFiles()
    testFilePatterns.length.should.equal(2)
    testFilePatterns.should.include('test/**/*.js')
    testFilePatterns.should.include('test/**/*.coffee')
