<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver to the car</title>
</head>
<body>
<h1>Please fill the form to add new driver to the car</h1>
<form name="post" method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id: <input type="text" name="car id"/> <br/>
    Driver id: <input type="text" name="driver id"/> <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
