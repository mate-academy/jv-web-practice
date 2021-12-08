<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h3>CREATE CAR</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/add-driver">
    Car Id: <input type="number" name="carId"><br><br>
    Driver Id: <input type="number" name="driverId"><br><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
