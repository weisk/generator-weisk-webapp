angular.module 'app', [
  # core, third party
  'ui.router', 'ngMaterial'

  # common
  'services', 'templates', 'themes'

  # modules
  'layout', 'main'
]

.config ($locationProvider, $urlRouterProvider, $httpProvider, $injector) ->
  $urlRouterProvider.otherwise ($injector) ->
    # fix infinite $digest loop - https://github.com/angular-ui/ui-router/issues/1616
    $state = $injector.get '$state'
    $state.go 'main'

  $locationProvider.html5Mode true
  $httpProvider.defaults.headers.common['Content-Type'] = 'application/json'

.run ($rootScope) ->
  $rootScope.logged = false
