<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add Driver to the car</title>
</head>
<body>
	<h1>Fill form below</h1>
	<form method="post"
		action="${pageContext.request.contextPath}/cars/drivers/add">
		<label>Car id</label> 
		<input type="number" min="1" name="car_id" required="required"><br> 
		<label>Driver id</label>
		<input type="number" min="1" name="driver_id" required="required"><br> 
		<input type="submit" value="Submit">
	</form>
</body>
</html>