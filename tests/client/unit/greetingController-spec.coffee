describe 'Greeting Controller', ->
  beforeEach module('expressular')
  
  it "sets the greeting",
    inject ($controller) ->
      scope = {}
      $controller "GreetingController", { $scope: scope }
      expect(scope.greeting).toBe("Hello From Coffee")
