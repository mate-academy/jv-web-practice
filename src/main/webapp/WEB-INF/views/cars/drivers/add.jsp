<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Create form</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            Driver_id <input type="text" name="driverId"><br>
            Car_id <input type="text" name="carId"><br>
            <button type="  submit">Confirm</button>
        </form>
</body>
</html>
