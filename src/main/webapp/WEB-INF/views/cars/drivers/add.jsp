<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" id="car_add_driver" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">Add driver ot car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Driver ID</th>
        <th>Car ID</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="number" name="driver_id" form="car_add_driver" required>
        </td>
        <td>
            <input type="number" name="car_id" form="car_add_driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="car_add_driver">
        </td>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/index">
    <button>To main page</button>
</a>
</body>
</html>
