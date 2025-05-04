<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Adding driver to the car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <th>Driver id</th>
            <th>Car Id</th>
        </tr>
        <tr>
            <td><input type="number" name="driver_id"></td>
            <td><input type="number" name="car_id"></td>
        </tr>
    </table>
    <button type="submit">Confirm</button>
</form>
</body>
</html>