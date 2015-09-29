gulp        = require 'gulp'
gutil       = require 'gulp-util'
jade        = require 'gulp-jade'
tplCache    = require 'gulp-angular-templatecache'
browserSync = require 'browser-sync'
config      = require '../config'

gulp.task 'templates', ->
  gulp
    .src [ "!#{ config.paths.src}/index.jade", "#{ config.paths.src }/**/*.jade" ]
    .pipe jade(config.templates.jadeOpts).on('error', gutil.log)
    .pipe tplCache config.templates.out, config.templates.tplCacheOpts
    .pipe gulp.dest config.paths.build
    .pipe browserSync.stream()
