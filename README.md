# [UglifyJS](http://github.com/mishoo/UglifyJS) Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/RobLoach/docpad-plugin-uglify.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-uglify "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-uglify.png)](http://badge.fury.io/js/docpad-plugin-uglify "View this project on NPM")
[![Gittip button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Support this project using Gittip")
[![Flattr button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Support this project using Flattr")

Minify all JavaScript in the `src/documents` folder, using
[UglifyJS](http://github.com/mishoo/UglifyJS), in [DocPad](https://docpad.org).

Convention:  `.js.anything`


## Install

```bash
$ docpad install uglify
```


## Configure

### Defaults

The default configuration for this plugin is the equivalant of adding the
following UglifyJS options to your [DocPad configuration file](http://docpad.org/docs/config):

``` coffee
plugins:
  uglify:
    # Disable on the development environment.
    environments:
      development:
        enabled: false

    # Pass true to display compressor warnings.
    warnings: false

    # Pass false to skip compressing entirely. Pass an object to specify custom
    # compressor options: http://lisperator.net/uglifyjs/compress .
    compress: {}

    # Pass false to skip mangling names.
    mangle: {}
```


### Template Configuration

It is possible to override the default configuration on a per-template basis:

``` css
---
uglify:
  mangle: false
---

var hi = "Hello!";
```


## History
[You can discover the history inside the `History.md` file](https://github.com/robloach/docpad-plugin-cssmin/blob/master/HISTORY.md#files)


## Contributing
[You can discover the contributing instructions inside the `Contributing.md` file](https://github.com/robloach/docpad-plugin-cssmin/blob/master/CONTRIBUTING.md#files)


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2013 [Rob Loach](http://robloach.net)
