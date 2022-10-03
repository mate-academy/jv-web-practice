<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration of car's driver</title>
</head>
<body>
<h1>Adding driver to the car</h1>
<table>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car ID <input required type="text" name="car_id">,<br>
        Driver ID <input required type="text" name="driver_id">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
