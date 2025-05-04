<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <td>Car ID</td>
            <td><input type="number" name="car_id"><br></td>
        </tr>
        <tr>
            <td>Driver ID</td>
            <td><input type="number" name="driver_id"></td>
        </tr>
    </table>
    <button type="submit">Add driver to car</button>
</form>
<form method="get"
      action ="${pageContext.request.contextPath}/cars">
    <button type="submit">
        Back
    </button>
</form>
</body>
</html>
