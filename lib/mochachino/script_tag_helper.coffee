_ = require('underscore')

SCRIPT_MIME_TYPES = { "js" : "text/javascript", "coffee" : "text/coffeescript" }

module.exports.write_tags_for = (files) ->
  output = ''
  _.each files, (file) ->
    extension = file.split('.')[1]
    output = output + "<script type=\"#{SCRIPT_MIME_TYPES[extension]}\" src=\"#{file}\"></script>\n"
  output
