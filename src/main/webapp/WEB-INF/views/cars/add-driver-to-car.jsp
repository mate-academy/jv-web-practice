<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h1>Fill out the form to add driver to car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add-driver">
    Car id <input type="number" name="car_id"><br>
    Driver id <input type="number" name="driver_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
