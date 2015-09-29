gulp          = require 'gulp'
gutil         = require 'gulp-util'
gulpSequence  = require 'gulp-sequence'

require('require-dir')('./tasks', recurse: true)

# gulp.task 'default', (cb) ->
gulp.task 'default',
  gulpSequence 'clean', [
    'appCSS'
    'appJS'
    'assets'
    'index'
    'libCSS'
    'libJS'
    'templates'
  ], [
    'browserSync'
    'watch'
  ]
