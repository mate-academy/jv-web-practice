<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please,fill out the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
  Driver id <input type="text" name="driver.id"><br>
  Car id <input type="text" name="car.id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
