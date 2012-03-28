module.exports =

    brand: (k, text, href) -> k.a {class: 'brand', href: href}, text

    logo: (k, href, src, width = '', style = '') ->
        k.a href: href, ->
            k.img {class: 'brand', src: src, width: width, style: style}

    navbar: (k, inner) ->

        k.div {class: 'navbar navbar-fixed'}, ->
            k.div {class: 'navbar-inner'}, ->
                k.div {class: 'container'}, inner

    link: (k, text, href, active = false) ->
        attrs = {}
        if active then attrs.class = 'active'
        k.li attrs, -> k.a {href: href}, text

    nav:

        left: (k, inner) -> k.ul {class: 'nav'}, inner
        right: (k, inner) -> k.ul {class: 'nav pull-right'}, inner

    dropdown: (k, text, inner) ->
        k.li {class: 'dropdown'}, ->
            k.a {href: '#', class: 'dropdown-toggle', 'data-toggle': 'dropdown'}, ->
                k.addText text
                k.b {class: 'caret'}, ''
            k.ul {class: 'dropdown-menu'}, inner

    divider: (k) -> k.li {class: 'vertical-divider'}
