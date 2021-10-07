<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver controller</title>
</head>
<body>
<h1>
    Please fill the form in:
</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/adddriver">
    Car's id <input type="text" name="car_id"><br>
    Driver's id <input type="text" name="driver_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
