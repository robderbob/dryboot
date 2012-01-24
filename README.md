# dryboot

dryboot = drykup + bootstrap 2.0

rapidly generate bootstrap compatible markup without writing html.

**very much work in progress!**

## examples

### layout & navbar

```coffeescript

k = require('drykup')()

dryboot = require 'dryboot'
{navbar} = dryboot

head = ->
    k.title 'Hello World'
    dryboot.stylesheets k, [
        '/bootstrap/bootstrap.min.css'
    ]

navigation = ->
    navbar.navbar k, ->
        navbar.brand k, 'Hello World', '/'

        navbar.nav.left k, ->
            navbar.link k, 'Foo (Active)', '/foo', true
            navbar.link k, 'Bar', '/bar'

        navbar.nav.right k, ->
            navbar.dropdown k, 'Admin', ->
                navbar.link k, 'Foo', '/admin/foo'
                navbar.link k, 'Bar', '/admin/bar'
            navbar.divider k
            navbar.link k, 'Baz', '/baz'

content = ->
    k.div class: 'container', ->
        k.div class: 'span12', ->
            dryboot.alert.warning 'Alert alert!'
        k.div class: 'row', ->
            # content goes here
    dryboot.scripts k, [
        '/jquery-1.7.min.js'
        '/bootstrap/js/bootstrap-modal.js'
        '/bootstrap/js/bootstrap-dropdown.js'
        '/bootstrap/js/bootstrap-alert.js'
        '/bootstrap/js/bootstrap-tab.js'
        '/jquery.validate.min.js'
        '/underscore-min.js'
    ]

body = ->
    navigation()
    content()

dryboot.layout k, head, body
```
