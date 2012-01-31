configuration = require('../lib/mochachino/configuration')

require('js-yaml')

describe "Configuration", ->

  it "provides a list of test file locations", ->

    fixtureFile = require('./mochachino_fixture.yml')
    testFilePatterns = configuration.testFiles(fixtureFile)

    testFilePatterns.length.should.equal(2)
    testFilePatterns.should.include('test/**/*.js')
    testFilePatterns.should.include('test/**/*.coffee')
