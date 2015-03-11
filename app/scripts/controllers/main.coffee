'use strict'

###*
 # @ngdoc function
 # @name hexagonalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the hexagonalApp
###
angular.module 'hexagonalApp'
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
