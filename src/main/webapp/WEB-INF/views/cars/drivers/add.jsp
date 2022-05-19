<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Select driver you want to add to specific car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <td>Driver id:</td>
            <td><input type="number" name="driver_id"></td>
        </tr>
        <tr>
            <td>Car id:</td>
            <td><input type="number" name="car_id"></td>
        </tr>
        <tr>
            <td><button type="submit">Add driver to car</button></td>
            <td></td>
        </tr>
    </table>
</form>
</body>
</html>
