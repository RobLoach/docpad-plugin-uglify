# [UglifyJS](http://github.com/mishoo/UglifyJS) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/RobLoach/docpad-plugin-uglify.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-uglify "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-uglify.png)](https://npmjs.org/package/docpad-plugin-uglify "View this project on NPM")
[![Dependency Status](https://david-dm.org/RobLoach/docpad-plugin-uglify.png?theme=shields.io)](https://david-dm.org/RobLoach/docpad-plugin-uglify)
[![Development Dependency Status](https://david-dm.org/RobLoach/docpad-plugin-uglify/dev-status.png?theme=shields.io)](https://david-dm.org/RobLoach/docpad-plugin-uglify#info=devDependencies)<br/>
[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

<!-- /BADGES -->



Minify JavaScript using [UglifyJS](http://github.com/mishoo/UglifyJS), in
[DocPad](https://docpad.org).

Convention:  `.js.anything`


<!-- INSTALL/ -->

## Install

### [Node](http://nodejs.org/)
- Use: `require('docpad-plugin-uglify')`
- Install: `npm install --save docpad-plugin-uglify`

<!-- /INSTALL -->


## Configure

### Defaults

The default configuration for this plugin is the equivalant of adding the
following [UglifyJS options](http://github.com/mishoo/UglifyJS2#the-simple-way)
to your [DocPad configuration file](http://docpad.org/docs/config):

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
  enabled: false
---

var Hello = "World!";
```


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/RobLoach/docpad-plugin-uglify/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/RobLoach/docpad-plugin-uglify/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (http://robloach.net)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

### Contributors

These amazing people have contributed code to this project:

- [RobLoach](https://github.com/RobLoach) — [view contributions](https://github.com/RobLoach/docpad-plugin-uglify/commits?author=RobLoach)

[Become a contributor!](https://github.com/RobLoach/docpad-plugin-uglify/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://github.com/robloach)

<!-- /LICENSE -->


