gulp       = require 'gulp'
concat     = require 'gulp-concat'
config     = require '../config'

gulp.task 'libCSS', ->
  gulp
    .src config.libcss.dependencies
    .pipe concat config.libcss.out
    .pipe gulp.dest config.paths.build
