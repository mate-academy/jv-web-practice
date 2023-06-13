<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div style="margin: auto; width: 50%;">
    <form method="post" action="${pageContext.request.contextPath}/displayAllCars/addDriverToCar">
        <h1>To add a driver to the car, please fill out the form below.</h1>
        driver_id <input type="text" name="driver_id"><br>
        <br>
        car_id <input type="text" name="car_id"><br>
        <button type="submit">Confirm</button>
    </form>
</div>
</body>
</html>
