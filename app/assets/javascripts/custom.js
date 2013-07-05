'use strict';



function PictureListCtrl($scope, $http) {
  $http.get('/pictures.json').success(function(data) {
  	$scope.pictures = data;
  });

  $scope.orderProp = 'title';
}

PictureListCtrl.$inject = ['$scope', '$http'];