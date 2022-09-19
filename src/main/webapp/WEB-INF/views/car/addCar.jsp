<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
    <h1>To add new car - enter data below</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/addCar">
        Model <input type="text" name="model" required><br>
        Manufacturer <input type="number" name="manufacturerId" required><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
