gulp       = require 'gulp'
config     = require '../config'

gulp.task 'watch', ->
  gulp.watch ["#{ config.paths.src }/**/*.coffee"],
    ['appJS']

  gulp.watch ["#{ config.paths.src }/**/*.sass"],
    ['appCSS']

  gulp.watch ["#{ config.paths.src }/index.jade"],
    ['index']

  gulp.watch ["!#{ config.paths.src }/index.jade", "#{ config.paths.src }/**/*.jade"],
    ['templates']
