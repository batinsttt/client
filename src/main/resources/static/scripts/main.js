var app = angular.module("userManagement", []);

// Controller Part
app.controller("userController", function($scope, $http) {
	$scope.users = [];
	_refreshUserData();
	// Private Method  
	// HTTP GET- get all employees collection
	function _refreshUserData() {
		$http({
			method : 'GET',
			url : 'http://localhost:8080/demo/users'
		}).then(function(res) { // success
			$scope.users = res.data;
		}, function(res) { // error
			console.log("Error: " + res.status + " : " + res.data);
		});
	}
});