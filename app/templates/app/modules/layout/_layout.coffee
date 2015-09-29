angular.module 'layout', []

.config ($stateProvider) ->
  $stateProvider
    .state 'layout',
      abstract: true
      views:
        '':
          templateUrl: 'layout/layout.html'

        'header@layout':
          templateUrl: 'layout/header.html'

        'footer@layout':
          templateUrl: 'layout/footer.html'
