<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new Car</title>
</head>
<body>
<h1>Fill the form to create new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="car-model"><br/><br/>
    Manufacturer <input type="text" name="car-manufacturer-id"><br/><br/>
    <button type="submit">Create car</button>
</form>
</body>
</html>
