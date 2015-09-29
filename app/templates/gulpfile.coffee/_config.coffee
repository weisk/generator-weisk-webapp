module.exports =
  paths:
    src: './app'
    build: './build'

  appjs:
    out: 'app.js'
    coffeelintOptions: # http://www.coffeelint.org/#options
      no_backticks: { level: 'warn' }
      max_line_length: { level: 'ignore' }
      no_empty_param_list: { level: 'warn' }
      no_interpolation_in_single_quotes: { level: 'warn' }
      no_unnecessary_double_quotes: { level: 'warn' }
      non_empty_constructor_needs_parens: { level: 'warn' }
      prefer_english_operator: { level: 'warn' }

  appcss:
    out: 'app.css'
    prefix: '> 1%'
    sassOptions: # https://www.npmjs.com/package/node-sass
      includePaths: ['./bower_components/font-awesome/scss']
      outputStyle: 'compact' # nested, expanded, compact, compressed
      errLogToConsole: true

  assets:
    in: '/assets'
    out: '/assets'
    fonts:
      out: '/assets/fonts'
      dependencies: [
        "./bower_components/material-design-iconic-font/dist/fonts/*"
      ]

  libjs:
    out: 'lib.js'
    dependencies: [
      './bower_components/angular/angular.js'
      './bower_components/angular-animate/angular-animate.min.js'
      './bower_components/angular-aria/angular-aria.min.js'
      './bower_components/angular-material/angular-material.min.js'
      './bower_components/angular-messages/angular-messages.min.js'
      './bower_components/angular-resource/angular-resource.min.js'
      './bower_components/angular-ui-router/release/angular-ui-router.min.js'
      './bower_components/jquery/dist/jquery.min.js'
      './bower_components/lodash/lodash.min.js'
    ]

  libcss:
    out: 'lib.css'
    dependencies: [
      './bower_components/angular-material/angular-material.min.css'
    ]

  templates:
    out: 'templates.js'
    jadeOpts: # http://jade-lang.com/api/
      pretty: true
      doctype: 'html'

    tplCacheOpts: # https://www.npmjs.com/package/gulp-angular-templatecache#api
      standalone: true
      base: (file) -> file.relative.replace /modules\//, ''
