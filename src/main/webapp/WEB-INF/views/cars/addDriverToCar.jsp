<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DriverToCar</title>
</head>
    <body>
        <h1>Add driver to car</h1>
        <h2>Input driver id and car id.</h2>

        <form method="post" action="${pageContext.request.contextPath}/cars/addDriverToCar">
            Car ID <input type="text" name="car_id"><br>
            Driver ID <input type="text" name="driver_id"><br>
            <button type="submit">Confirm</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/">
            Home page <button type="submit">Go</button>
        </form>
    </body>
</html>
