_ = require 'underscore'

exports = module.exports

exports.navbar = (k, inner) ->

    k.div {class: 'navbar navbar-fixed'}, ->
        k.div {class: 'navbar-inner'}, ->
            k.div {class: 'container'}, inner

exports.brand = (k, text, href) -> k.a {class: 'brand', href: href}, text

exports.nav =

exports.rightNav = (

# crumbs = a list of {href: '', text: ''}

exports.breadcrumb = (k, crumbs) ->
    k.ul {class: breadcrumb}, ->
        _.each _.inital(crumbs), (crumb) ->
            k.li ->
                k.a {href: crumb.href}, crumb.text
                k.span {class: 'divider'}, '/'
        last = _.last(crumbs)
        k.li {class: 'active'}, crumb.text

