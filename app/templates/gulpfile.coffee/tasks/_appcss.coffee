gulp        = require 'gulp'
gutil       = require 'gulp-util'
concat      = require 'gulp-concat'
prefix      = require 'gulp-autoprefixer'
sass        = require 'gulp-sass'
browserSync = require 'browser-sync'
config      = require '../config'

gulp.task 'appCSS', ->
  gulp
    .src "#{ config.paths.src }/**/*.sass"
    .pipe sass(config.appcss.sassOptions).on('error', sass.logError)
    .pipe prefix config.appcss.prefix
    .pipe concat config.appcss.out
    .pipe gulp.dest config.paths.build
    .pipe browserSync.stream()
