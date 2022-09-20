<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Car</title>
</head>
<body>
<h1>Please fill the form below to add new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model" required/><br>
    Manufacturer Id <input type="number" name="manufacturerId" required/><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>