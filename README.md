# Using clientside-haml-js with Sprockets and Rails 3.1/3.2

## About

Inspired by [haml-sprockets]. Use [clientside-haml-js] to render your haml templates with javascript/coffeescript and haml.

## How to use it?

The gem includes [clientside-haml-js], [JSON-js] for IE, [underscore] and [underscore.string]. You would not have to download it separately. To use this gem, you need to do the following:

In the `Gemfile`, add the following line.

    gem "cshaml-sprockets"

In `app/assets/javascripts/application.js` add the following line before `//= require_tree .`

    //=require json2
    //=require underscore
    //=require underscore.string
    //=require haml

Now, you can create cshamljs files under `app/assets/javascripts/templates` folder. You can create the templates folder, if it does not already exist.

    // code for app/assets/javascripts/templates/hello.jst.cshamljs
    %h1 Hello HAML

Or to use CoffeeScript in haml templates name the file

    // code for app/assets/javascripts/templates/hello.jst.cshamlcoffee
    %h1= @model.title

You can now access the template anywhere in your javascript or coffeescript code.

    JST["templates/hello"](model: model)

This should give you back the string `"<h1>model title</h1>"`.

Refer to [clientside-haml-js] for more details.

## LICENSE

This is distributed under the MIT license.

## Copyright
(c) 2012 Boris Nadion, [Astrails] Ltd


[HAML]: http://haml-lang.com/
[clientside-haml-js]: https://github.com/creationix/haml-js
[haml-sprockets]: https://github.com/dharanasoft/haml-sprockets
[underscore]: http://documentcloud.github.com/underscore/
[underscore.string]: http://epeli.github.com/underscore.string/
[JSON-js]: https://github.com/douglascrockford/JSON-js
[Astrails]: http://astrails.com
