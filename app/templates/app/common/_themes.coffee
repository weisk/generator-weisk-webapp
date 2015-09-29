angular.module 'themes', []

.config ($mdThemingProvider) ->
  # http://www.google.com/design/spec/style/color.html#color-color-palette
  # https://material.angularjs.org/latest/#/Theming/01_introduction
  $mdThemingProvider
    .theme 'default'
      .primaryPalette 'brown'
      .accentPalette  'orange'
      .warnPalette    'red'
