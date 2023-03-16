<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add a new car</title>
</head>
<body>
	<h1>Fill form below</h1>
	<form method="post"
		action="${pageContext.request.contextPath}/cars/add">
		<label>Model</label> 
		<input type="text" name="model" required="required"><br> 
		<label>Manufacturer id</label>
		<input type="number" min="1" name="manufacturer_id" required="required"><br> 
		<input type="submit" value="Submit">
	</form>
</body>
</html>