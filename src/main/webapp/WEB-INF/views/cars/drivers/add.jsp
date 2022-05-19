<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Add driver in car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <td>Car id:</td>
            <td><input type="number" name="car_id" required></td>
        </tr>
        <tr>
            <td>Driver id:</td>
            <td><input type="number" name="driver_id" required></td>
        </tr>
        <tr>
            <td>
                <button type="submit">Confirm</button>
            </td>
            <td></td>
        </tr>
    </table>
</form>
<a href="${pageContext.request.contextPath}/index">back to index page</a>
</body>
</html>
