_ = require 'underscore'

module.exports =

    layout: require './lib/layout'
    navbar: require  './lib/navbar'

    scripts: (k, xs) -> _.each xs, (x) -> k.script {src: x}, ''

    stylesheets: (k, xs) ->
        _.each xs, (x) -> k.link {rel: 'stylesheet', href: x}, ''

    breadcrumbs: (k, xs) ->
        k.ul {class: 'breadcrumb'}, ->
            _.each _.initial(xs), (x) ->
                k.li ->
                    k.a {href: x.href}, x.text
                    k.span {class: 'divider'}, '/'
            k.li {class: 'active'}, _.last(xs).text
