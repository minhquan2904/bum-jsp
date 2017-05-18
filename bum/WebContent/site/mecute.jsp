<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ADMIN LOGIN</title>
<link rel="stylesheet" href="css/admin.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
.fail{
	background-color: #F44336;
	color:white;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	
 	 
}</style>
<body>	

	
	<div class="container">
		<div class="wrapper">
			<form action="mecute.html" method="post" name="Login_Form" id="formLogin" role="form"
				class="form-signin">
				
				<h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
				<c:if test="${not empty loginFail}"><p class='fail' id="signinresult"><c:out value="${loginFail}"></c:out></p></c:if>
				<hr class="colorgraph">
				<br> <input type="text" class="form-control required username" name="Username" data-placement="top" 
				data-trigger="manual" data-content="Phải nhập đúng username"
					id="username" placeholder="Username" autofocus="" /> 
					<input
					type="password" class="form-control required password1" name="Password"
					data-placement="right" data-trigger="manual" data-content="Phải nhập đúng pass"
					placeholder="Password"  />

				<button class="btn btn-lg btn-primary btn-block" name="Submit"
					value="Login" type="Submit">Login</button>
			</form>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/admin.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
