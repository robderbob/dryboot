_ = require 'underscore'

module.exports =

    layout: require './lib/layout'
    navbar: require  './lib/navbar'

    scripts: (k, xs) -> _.each xs, (x) -> k.script {src: x}, ''

    stylesheets: (k, xs) ->
        _.each xs, (x) -> k.link {rel: 'stylesheet', href: x}, ''
