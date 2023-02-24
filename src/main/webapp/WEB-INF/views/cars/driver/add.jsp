<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Add driver and car ID </h1>

<form method="post" action="${pageContext.request.contextPath}
        /cars/driver/addDriverToCar"></form>
    <label>
        Car ID
        <input type="text" name="card_id">
    </label><br>

    <label>
        Driver ID
        <input type="text" name="driver_id">
    </label><br>
        <button type="submit">Confirm</button>
</body>
</html>
