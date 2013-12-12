# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class UglifyPlugin extends BasePlugin
    # Name
    name: 'uglify'

    # Configuration
    config:
      # Disable on the development environment.
      environments:
        development:
          enabled: false

    # Constructor
    constructor: ->
      # Prepare
      super

      # Load UglifyJS
      @UglifyJS = require 'uglify-js'

      # Chain
      @

    # Render event
    renderDocument: (opts,next) ->
      # Prepare.
      {extension, templateData, file, content} = opts
      
      # Ensure we are acting on a JavaScript document.
      if extension == 'js' and file.type == 'document'
        # Construct the options.
        config = @getConfig()
        uglifyOptions = {
          fromString: true
          # TODO: Make use of "output" variable to display status.
        }

        # Allow use of global config options.
        for own key, value of config
          uglifyOptions[key] = value

        # Allow overriding using the document options.
        if templateData.document.uglify or false
          for own key, value of templateData.document.uglify
            uglifyOptions[key] = value

        # Render the page with UglifyJS.
        result = @UglifyJS.minify(content, uglifyOptions)
        opts.content = result.code

      # Done, return back to DocPad
      return next()
