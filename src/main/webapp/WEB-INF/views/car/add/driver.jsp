<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2>Add driver to car</h2>
<form method="post" action="${pageContext.request.contextPath}/car/add/driver">
    ID Driver <label> <input type="number" name="driver_id"></label> <br>
    ID Car <label> <input type="number" name="car_id"></label> <br>
    <button type="submit">Add pair</button>
</form>
</body>
</html>