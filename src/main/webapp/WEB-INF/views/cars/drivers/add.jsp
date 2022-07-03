<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id: <input type="text" name="driver_id"><br>
    Car id: <input type="text" name="car_id"><br>
    <button type="submit">Creation</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Main page</a></p>
</body>
</html>
