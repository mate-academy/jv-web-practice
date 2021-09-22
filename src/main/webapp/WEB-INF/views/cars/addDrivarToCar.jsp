<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddingDriver</title>
</head>
<body>
<h1>You can add new driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDrivarToCar">
    Car ID <input type="number" name="car_id"><br>
    Driver ID <input type="number" name="driver_id">
    <button type="submit">Add</button>
</form>
</table>
</body>
</html>
