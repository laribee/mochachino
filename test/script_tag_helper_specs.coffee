helper = require('../lib/mochachino/script_tag_helper')

describe "script tag helper", ->

  it "renders javascript files list into valid html script tags", ->
    expected = "<script type=\"text/javascript\" src=\"application.js\"/>\n"
    expected += "<script type=\"text/javascript\" src=\"utility/validation.js\"/>\n"
    files = [ "application.js", "utility/validation.js" ]
    helper.write_tags_for(files).should.equal(expected)

  it "will properly type coffeescript files", ->
    expected = "<script type=\"text/coffeescript\" src=\"application.coffee\"/>\n"
    files = [ "application.coffee" ]
    helper.write_tags_for(files).should.equal(expected)

  it "will properly type both javascript and coffeescript files", ->
    expected = "<script type=\"text/coffeescript\" src=\"application.coffee\"/>\n"
    expected += "<script type=\"text/javascript\" src=\"validation.js\"/>\n"
    files = [ "application.coffee", "validation.js" ]
    helper.write_tags_for(files).should.equal(expected)
