app = angular.module('expressular', [])

app.controller 'GreetingController', ($scope) ->
  $scope.greeting = 'Hello From Coffee'
