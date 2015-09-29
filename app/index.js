'use strict';
var generators  = require('yeoman-generator');
var chalk       = require('chalk');
var _s          = require('underscore.string');

var WeiskWebappGenerator = generators.Base.extend({
  constructor: function () {
    generators.Base.apply(this, arguments);
  },

  initializing: function () {
    this.pkg = require('../package.json');
  },

  prompting: {
    askFor: function () {
      var done = this.async();
      this.log(chalk.magenta('Using weisk-webapp generator.'));

      this.prompt([
        {
          type: 'input',
          name: 'name',
          message: 'your app name',
          default: this.appname
        }
      ], function(answers) {
        this.slugName = _s.slugify(answers.name);
        this.capitalName = _s.capitalize(answers.name);
        done();
      }.bind(this));
    }
  },

  writing: {
    app: function () {
      // Project files
      this.copy('_README.md', 'README.md');
      this.copy('_bower.json', 'bower.json');
      this.copy('_package.json', 'package.json');
      this.copy('_.gitignore', '.gitignore');

      // Gulp config
      this.copy('gulpfile.coffee/_config.coffee', 'gulpfile.coffee/config.coffee')
      this.copy('gulpfile.coffee/_index.coffee', 'gulpfile.coffee/index.coffee')

      // Gulp tasks
      this.copy('gulpfile.coffee/tasks/_appcss.coffee', 'gulpfile.coffee/tasks/appcss.coffee')
      this.copy('gulpfile.coffee/tasks/_appjs.coffee', 'gulpfile.coffee/tasks/appjs.coffee')
      this.copy('gulpfile.coffee/tasks/_assets.coffee', 'gulpfile.coffee/tasks/assets.coffee')
      this.copy('gulpfile.coffee/tasks/_browserSync.coffee', 'gulpfile.coffee/tasks/browserSync.coffee')
      this.copy('gulpfile.coffee/tasks/_clean.coffee', 'gulpfile.coffee/tasks/clean.coffee')
      this.copy('gulpfile.coffee/tasks/_index.coffee', 'gulpfile.coffee/tasks/index.coffee')
      this.copy('gulpfile.coffee/tasks/_libcss.coffee', 'gulpfile.coffee/tasks/libcss.coffee')
      this.copy('gulpfile.coffee/tasks/_libjs.coffee', 'gulpfile.coffee/tasks/libjs.coffee')
      this.copy('gulpfile.coffee/tasks/_templates.coffee', 'gulpfile.coffee/tasks/templates.coffee')
      this.copy('gulpfile.coffee/tasks/_watch.coffee', 'gulpfile.coffee/tasks/watch.coffee')

      // Webapp
      this.copy('app/_app.coffee','app/app.coffee');
      this.copy('app/_index.jade','app/index.jade');

      this.copy('app/common/_services.coffee', 'app/common/services.coffee');
      this.copy('app/common/_themes.coffee', 'app/common/themes.coffee');

      this.copy('app/styles/_common.sass', 'app/styles/common.sass');
      this.copy('app/styles/_global.sass', 'app/styles/global.sass');

      this.copy('app/modules/layout/_footer.jade', 'app/modules/layout/footer.jade');
      this.copy('app/modules/layout/_header.jade', 'app/modules/layout/header.jade');
      this.copy('app/modules/layout/_layout.coffee', 'app/modules/layout/layout.coffee');
      this.copy('app/modules/layout/_layout.jade', 'app/modules/layout/layout.jade');
      this.copy('app/modules/layout/_layout.sass', 'app/modules/layout/layout.sass');

      this.copy('app/modules/main/_main.coffee', 'app/modules/main/main.coffee');
      this.copy('app/modules/main/_main.jade', 'app/modules/main/main.jade');
      this.copy('app/modules/main/_main.sass', 'app/modules/main/main.sass');
    }
  },

  install: function(){
    this.installDependencies();
  }
});

module.exports = WeiskWebappGenerator;
