'use strict'

###*
 # @ngdoc function
 # @name hexagonalApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the hexagonalApp
###
angular.module 'hexagonalApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
