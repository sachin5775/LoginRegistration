<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration User</title>
</head>
<body>
	<form action="RegController.jsp">
		<div class="container">
			<label for="firstname"><b>First Name</b></label> <input type="text"
				placeholder="Enter firstName" name="firstname" required> <br>
			<br> <label for="lastname"><b>Last Name</b></label> <input
				type="text" placeholder="Enter lastname" name="lastname" required>
			<br> <br> <label for="username"><b>Username</b></label> <input
				type="text" placeholder="username" name="username" required>
			<br> <br> <label for="Password"><b>Password</b></label> <input
				type="Password" placeholder="Enter Password" name="password"
				required> <br> <br>
				<label for="contactNumber"><b>PhoneNumber</b></label> <input
				type="text" placeholder="Enter Phone Number" name="contactNumber"
				required> <br> <br>
			<button type="submit">Sign Up</button>
		</div>
	</form>

</body>
</html>