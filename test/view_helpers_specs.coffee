helper = require('../lib/mochachino/view_helpers')

describe "script tag helper", ->

  it "renders javascript files list into valid html script tags", ->
    expected = "<script type=\"text/javascript\" src=\"application.js\"></script>\n"
    expected += "<script type=\"text/javascript\" src=\"utility/validation.js\"></script>\n"
    files = [ "application.js", "utility/validation.js" ]
    helper.write_script_tags(files).should.equal(expected)

  it "will properly type coffeescript files", ->
    expected = "<script type=\"text/coffeescript\" src=\"application.coffee\"></script>\n"
    files = [ "application.coffee" ]
    helper.write_script_tags(files).should.equal(expected)

  it "will properly type both javascript and coffeescript files", ->
    expected = "<script type=\"text/coffeescript\" src=\"application.coffee\"></script>\n"
    expected += "<script type=\"text/javascript\" src=\"validation.js\"></script>\n"
    files = [ "application.coffee", "validation.js" ]
    helper.write_script_tags(files).should.equal(expected)
