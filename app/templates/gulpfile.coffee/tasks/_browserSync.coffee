gulp        = require 'gulp'
process     = require 'process'
historyApi  = require 'connect-history-api-fallback'
config      = require '../config'
browserSync = require('browser-sync')

gulp.task 'browserSync', ->
  browserSync
    open: false
    port: process.env.PORT || 3000
    server:
      baseDir: config.paths.build
      middleware: [ historyApi() ]
