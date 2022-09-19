<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h3>Fill form to add driver to car</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car's ID <input type="text" name="car-id"><br/><br/>
    Driver's ID <input type="text" name="driver-id"><br/><br/>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
