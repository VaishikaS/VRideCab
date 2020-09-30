<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>UserLogin</title>
	<style>
		
			body, html {
			  /*height: 100%;*/
			  font-family:  sans-serif;
			  text-align:center;
			}
			
			.bgimage {
			  background-image: url('https://media.istockphoto.com/photos/taxi-picture-id519870714?k=6&m=519870714&s=612x612&w=0&h=P_temkhY0oNZjeUH-TzaO8GayQ9oLffLkvBfvtOTpm8=');
			  min-height:500px;
			  background-repeat: no-repeat;
			  background-size: 70% 100%;
			  background-position: left top;
			}
	
			.container {
			  position: absolute;
			  right: 0;
			  margin: 20px;
			  max-width: 300px;
			  padding: 16px;
			  background-color: white;
			}
			.button {
			  background-color: grey;
			  color: white;
			  padding: 10px 5px;
			  text-align: center;
			  font-size: 20px;
			  margin: 10px 5px;
			}
			.inputtype{
				font-family: Poppins-Regular;
				font-size: 20px;
				line-height: 2.5;
				color: black;
				margin: 5px;
				text-align:center;
			}
			
</style>
</head>
<body>
<div class="bgimage">
	<form action="/validateUser" method="post" class="container">
	<c:if test="${empty error}">
		<h1>${error}</h1>
	</c:if><br>
	<!--  <b><span style="font-size:20pt;color:brown">Welcome to VRide</span></b><br><br><br>-->
	<b><span style="font-size:20pt;color:brown">LOGIN</span></b><br><br>
		<input  type="text" name="id" value="" placeholder="User Id" class="inputtype" required><br><br>
		<input  type="password" name="password" value="" placeholder="Password" class="inputtype" required><br><br>
		<input type="submit" value="Login" class="button" ><br><br>
		<input type="button" value="New User ? SignUp Here" class="button" onclick="goToSignUp()" > 
	</form>
</div>
<script type="text/javascript">
	function goToSignUp() {
		alert("Going to SignUp page...");
		window.location.href="/signup";
	}
</script>
</body>
</html>