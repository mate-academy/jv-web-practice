<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add a new driver</title>
</head>
<body>
	<h1>Fill form below</h1>
	<form method="post" action="${pageContext.request.contextPath}/drivers/add">
		<label>Driver name</label> <input type="text" name="driver_name" required="required"><br>
		<label>License number</label> <input type="text" name="license_number" required="required"><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>