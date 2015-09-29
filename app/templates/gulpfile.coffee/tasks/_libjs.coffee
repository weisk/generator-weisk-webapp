gulp       = require 'gulp'
concat     = require 'gulp-concat'
config     = require '../config'

gulp.task 'libJS', ->
  gulp
    .src config.libjs.dependencies
    .pipe concat config.libjs.out
    .pipe gulp.dest config.paths.build
