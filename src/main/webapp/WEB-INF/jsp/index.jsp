<html>
	<head>
		<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/img/favicon.png"/>
		<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>			
	</head>
	<body ng-app="userManagement" ng-controller="userController">
		<div id="header">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			   <a class="navbar-brand" href="#">Home</a>
			   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			   <span class="navbar-toggler-icon"></span>
			   </button>
			   <div class="collapse navbar-collapse" id="navbarNav">
			      <ul class="navbar-nav">
			         <li class="nav-item active">
			            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
			         </li>
			         <li class="nav-item">
			            <a class="nav-link" href="#">Features</a>
			         </li>
			         <li class="nav-item">
			            <a class="nav-link" href="#">Pricing</a>
			         </li>
			         <li class="nav-item">
			            <a class="nav-link disabled" href="#">Disabled</a>
			         </li>
			      </ul>
			   </div>
			</nav>
		</div>
		<div id="content">
			<table border="1">
			   <tr>
			      <th>User Id</th>
			      <th>User Name</th>
			      <th>Encryted Password</th>
			      <th>Enabled</th>
			      <th>Edit</th>
			      <th>Delete</th>
			   </tr>
			   <!-- $scope.employees -->
			   <tr ng-repeat="user in users">
			      <td> {{ user.userId }}</td>
			      <td> {{ user.userName }}</td>
			      <td >{{ user.encrytedPassword }}</td>
			      <td >{{ user.enabled }}</td>
			      <td>
			         <a ng-click="editUser(user)" class="edit-button">Edit</a>
			      </td>
			      <td>
			         <a ng-click="deleteUser(user)" class="delete-button">Delete</a>
			      </td>
			   </tr>
			</table>
		</div>
		<div id="footer">
		
		</div>
		<script src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.min.js"></script>
    	<script src="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    	<script src="${pageContext.request.contextPath}/scripts/angularjs/1.7.6/angular.min.js" type="text/javascript"></script>
    	<script src="${pageContext.request.contextPath}/scripts/main.js" type="text/javascript"></script>
	</body>
</html>