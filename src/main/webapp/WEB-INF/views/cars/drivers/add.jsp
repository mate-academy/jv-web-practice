<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill the form:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    DRIVER ID <input type="number" required name="driver_id" min="1">  <br>
    CAR ID <input type="number" required name="car_id" min="1"> <br>
    <button type="submit">Save</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
