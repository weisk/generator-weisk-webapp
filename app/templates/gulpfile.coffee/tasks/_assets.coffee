gulp        = require 'gulp'
browserSync = require 'browser-sync'
config      = require '../config'

gulp.task 'assets', ->
  gulp
    .src "#{ config.paths.src }#{ config.assets.in }"
    .pipe gulp.dest "#{ config.paths.build }#{ config.assets.out }"
    .pipe browserSync.stream()

  gulp
    .src "#{ config.paths.src }#{ config.assets.fonts.dependencies }"
    .pipe gulp.dest "#{ config.paths.build }#{ config.assets.fonts.out }"
    .pipe browserSync.stream()
