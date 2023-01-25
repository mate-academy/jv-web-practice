<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.req.contextPath}/cars/add">
    <label for="car_id">car id</label><br>
    <input type="number" id="car_id" name="car_id" required>
    <label for="driver_id">driver id</label>
    <input type="number" id="driver_id" name="driver_id" required>
    <button type="submit">add driver</button>
</form>
<p><a href="${pageContext.req.contextPage}/index">main page</a></p>
</body>
</html>
