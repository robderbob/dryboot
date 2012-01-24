alert = (k, classes, heading, inner) ->
    k.div {class: "alert #{classes}"},
        k.a {class: 'close', 'data-dismiss': 'alert', href: '#'}, '&times;'
        if inner? then k.h4 {class: 'alert-heading'}, heading
        else inner = heading

        if _.isFunction inner then inner() else k.addText inner

module.exports.block = {}

classes = 'warning error success info'.split ' '

_.each classes, (c) ->
    module.exports[c] = (k, heading, inner) ->
        alert k, "alert-#{c}", heading, inner
    module.exports.block.[c] = (k, heading, inner) ->
        alert k, "alert-#{c} alert-block", heading, inner

# examples:
#
# alert.warning 'error error'
#
# alert.block.warning 'error error'
#
# alert.info 'Information', 'bla bla bla'
#
# alert.error 'Error', ->
#     k.strong 'Error'
