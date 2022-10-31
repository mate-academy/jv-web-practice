<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>Please fill the form below to add Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car Model <input type="text" name="model">
    Car Manufacturer Id <input type="number" name="manufacturer_id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
