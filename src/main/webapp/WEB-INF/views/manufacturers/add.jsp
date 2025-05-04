<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add a new manufacturer</title>
</head>
<body>
	<h1>Fill form below</h1>
	<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
		<label>Manufacturer name</label> <input type="text" name="manufacturer_name" required="required"><br>
		<label>Country</label> <input type="text" name="country" required="required"><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>