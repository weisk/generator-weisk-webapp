# generator-weisk-webapp

Yet another gulp-angular-yadayada generator. Simpler, cleaner, straight to the point.

Technologies:
* Bower + Gulp (dependencies + building)
* Coffeescript + Coffelinter
* Sass
* Jade

Libraries:
* angularjs
* angular-material
* angular-ui-router
* jquery
* lodash

### Usage

Install the generator
```
$ npm install -g generator-weisk-webapp
```

Run it on your folder project
```
$ mkdir my-project && cd $_
$ yo weisk-webapp
```

And you will get the following file structure:

<pre>
├── bower_components/
│   └── ...
│
├── nodes_modules/
│   └── ...
│
├── gulpfile.coffee/
│   ├── tasks/
│   │   └── appcss.coffee
│   │   └── appjs.coffee
│   │   └── assets.coffee
│   │   └── browserSync.coffee
│   │   └── clean.coffee
│   │   └── index.coffee
│   │   └── libcss.coffee
│   │   └── libjs.coffee
│   │   └── templates.coffee
│   │   └── watch.coffee
│   │
│   ├── config.coffee
│   └── index.coffee
│
├── app/
│   ├── common/
│   │   └── services.coffee
│   │   └── themes.coffee
│   │
│   ├── modules/
│   │   ├── layout/
│   │   │   └── layout.coffee
│   │   │   └── layout.jade
│   │   │   └── layout.sass
│   │   │   └── header.jade
│   │   │   └── footer.jade
│   │   │
│   │   └─── main/
│   │       └── main.coffee
│   │       └── main.jade
│   │       └── main.sass
│   │
│   ├── styles/
│   │   └── appcss.coffee
│   │   └── appjs.coffee
│   │
│   ├── app.coffee
│   └── index.jade
│
├── .gitignore
├── bower.json
├── package.json
└── README.md
</pre>

Customize the [gulpfile](app/templates/gulpfile.coffee/_index.coffee) and its
[config](app/templates/gulpfile.coffee/_config.coffee), and you're ready to
rock with gulp!

```
$ gulp
```
