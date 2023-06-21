<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver from a car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
    <table>
        <tr>
            <td>Car id</td>
            <td><input name="carId" type="number"></td>
        </tr>
        <tr>
            <td>Driver id</td>
            <td><input name="driverId" type="number"></td>
        </tr>
        <tr>
            <td></td>
            <td><button name="delete" type="submit">Delete</button></td>
        </tr>
    </table>
</form>
</body>
</html>
