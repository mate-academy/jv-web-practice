<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add the driver to the car</title>
</head>
<body>
    <span style="font-family: monospace; color: #000000; "><h1>Please fill the form below</h1>

        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add-driver">
            Car ID <input type="text" name="car_id"><br>
            Driver ID <input type="text" name="driver_id"><br>
            <button type="submit"><span style="font-family: monospace; color: #000000; ">Add driver to car</span></button>
        </form>
    </span>
</body>
</html>
