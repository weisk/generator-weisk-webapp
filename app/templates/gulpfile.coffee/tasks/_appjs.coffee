gulp        = require 'gulp'
gutil       = require 'gulp-util'
concat      = require 'gulp-concat'
coffee      = require 'gulp-coffee'
coffeelint  = require 'gulp-coffeelint'
browserSync = require 'browser-sync'
ngAnnotate  = require 'gulp-ng-annotate'
config      = require '../config'

gulp.task 'appJS', ->
  gulp
    .src "#{ config.paths.src }/**/*.coffee"
    .pipe coffeelint config.appjs.coffeelintOptions
    .pipe coffeelint.reporter()
    .pipe coffee().on 'error', gutil.log
    .pipe concat config.appjs.out
    .pipe ngAnnotate()
    .pipe gulp.dest config.paths.build
    .pipe browserSync.stream()
