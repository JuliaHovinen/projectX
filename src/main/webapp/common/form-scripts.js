angular.module("myapp", [])
    .controller("MyController", function($scope) {
        $scope.myForm = {};
        $scope.myForm.firstName = "Jain";
        $scope.myForm.lastName  = "Lee";
    } );