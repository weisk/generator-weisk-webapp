angular.module 'main', []

.config ($stateProvider) ->
  $stateProvider
    .state 'main',
      url: ''
      parent: 'layout'
      views:
        'main':
          templateUrl: 'main/main.html'
          controller: 'MainCtrl'

.controller 'MainCtrl', ($scope) ->
  list = [
    'AngularJS'
    'Coffeescript'
    'Sass'
    'Angular Material'
    'Ui Router'
    'Gulp'
    'Npm'
    'Bower'
    'Autoprefixer'
    'Jade'
  ]

  $scope.toggle = ->
    $scope.things = if $scope.things?.length then [] else list
